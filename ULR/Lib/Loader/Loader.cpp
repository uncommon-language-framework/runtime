#include "../Loader.hpp"
#include "../Resolver.hpp"
#include <memory>
#include <iostream>
#include <string>
#include <map>
#include <unordered_map>
#include <vector>

using ULR::Resolver::BindingFlags;

extern ULR::Resolver::ULRAPIImpl* internal_api;

namespace ULR::Loader
{
	std::map<std::string_view, Assembly*> ReadAssemblies;
	std::map<std::string_view, Assembly*> LoadedAssemblies;

	std::vector<GenericPlaceholder*> alloced_generic_placeholders;

	HMODULE ReadAssembly(const char* dll)
	{
		HMODULE mod = LoadLibraryA(dll);

		if (mod == nullptr)
		{
			std::cerr << "fatal: '" << dll << "' not found" << std::endl;
			exit(1);
		}

		char* meta = (char*) GetProcAddress(mod, "ulrmeta");
		void** addr = (void**) GetProcAddress(mod, "ulraddr");
		char** deps = (char**) GetProcAddress(mod, "ulrdeps");

		if (meta == nullptr || addr == nullptr || deps == nullptr)
		{
			std::cerr << "fatal: '"  << dll << "' is not a valid ULR Assembly";
			exit(1);
		}

		size_t metalen = strlen(meta);

		std::string as_str = dll;
		char* asm_basename = strdup(as_str.substr(as_str.find_last_of("/\\") + 1).c_str());
		
		// std::string fullpathstr = std::filesystem::absolute(dll).string();
		char* asm_fullpath = strdup(dll); // TODO: get abs path in the future

		Assembly* assembly = new Assembly(
			asm_basename,
			asm_fullpath,
			meta,
			metalen,
			addr,
			deps,
			mod
		);

		size_t deps_i = 0;

		while (deps[deps_i] != nullptr) // load deps
		{
			// don't double-load
			if (LoadedAssemblies.count(deps[deps_i]) || ReadAssemblies.count(deps[deps_i])) continue;

			ReadAssembly(deps[deps_i]);

			deps_i++;
		}

		size_t i = 0;

		while (i < metalen)
		{
			int modflags = (int) Modifiers::Private;
			TypeType class_type;

			while (meta[i] != '[')
			{
				char chr = meta[i];

				switch (chr)
				{
					case 'p':
						modflags |= Modifiers::Public;
						break;
					case 's':
						modflags |= Modifiers::Static;
						break;
					case 'd':
						modflags |= Modifiers::Sealed;
						break;
					case 'a':
						modflags |= Modifiers::Abstract;
						break;
					case 'i':
						modflags |= Modifiers::Internal;
						break;
					case 't':
						modflags |= Modifiers::Protected;
						break;
					case 'l':
						modflags |= Modifiers::Partial;
						break;
					case 'c':
						class_type = TypeType::Class;
						break;
					case 'e':
						class_type = TypeType::Interface;
						break;
					case 'v':
						class_type = TypeType::Struct;
					case 'r':
						modflags |= Modifiers::Readonly;
				}

				i++;
			}

			i++;

			int ns_len = 0;

			while (meta[i] != ']')
			{
				ns_len++;
				i++;
			}

			std::string ns_name = std::string((&meta[i-ns_len])-1, ns_len+2); // -1 and +2 for brackets

			i++;

			int typename_len = 0;

			while (meta[i] != ':' && meta[i] != '<')
			{
				typename_len++;
				i++;
			}

			std::string type_name = std::string(&meta[i-typename_len], typename_len);

			i++;

			while (meta[i] != '$') i++;

			i++;

			int size_len = 0;

			while (meta[i] != ';')
			{
				size_len++;
				i++;
			}

			std::string size_str = std::string(&meta[i-size_len], size_len);

			i++; // skip semicolon

			size_t size = std::stoull(size_str);

			Type* type = new Type(class_type, assembly, strdup((ns_name+type_name).c_str()), modflags, size, std::vector<Type*>(), nullptr, false, 0);

			/* Skip Members */

			while (meta[i] != '\n') i++;

			assembly->types[type->name] = type;

			i++; // skip newline
		}

		ReadAssemblies[asm_basename] = assembly;

		return mod;
	}

	Assembly* LoadAssembly(const char* dll, Resolver::ULRAPIImpl* api)
	{
		std::string as_str = dll;
		std::string shortname_str = as_str.substr(as_str.find_last_of("/\\") + 1);

		char* shortname = const_cast<char*>(shortname_str.c_str());

		if (LoadedAssemblies.count(shortname) == 1) return LoadedAssemblies[shortname];
		if (ReadAssemblies.count(shortname) == 0) throw std::runtime_error(std::string("Attempted to load assembly '")+dll+std::string("' without reading it first"));

		Assembly* assembly = ReadAssemblies[shortname];

		char* meta = assembly->meta;
		void** addr = assembly->addr;

		size_t i = 0;
		size_t metalen = assembly->metalen;
		size_t nummember = -1;

		while (i < metalen)
		{

			while (meta[i] != '[') i++;

			i++; // skip bracket

			int ns_len = 0;

			while (meta[i] != ']')
			{
				ns_len++;
				i++;
			}

			std::string ns_name = std::string((&meta[i-ns_len])-1, ns_len+2); // -1, +2 for brackets

			i++;

			int typename_len = 0;

			while (meta[i] != ':' && meta[i] != '<')
			{
				typename_len++;
				i++;
			}

			std::string type_name = std::string(&meta[i-typename_len], typename_len);

			i++;

			bool is_generic = false;
			unsigned char num_generic_idents;

			if (meta[i-1] == '<')
			{
				is_generic = true;

				while (1)
				{
					while (meta[i] != ',' && meta[i] != '>')
					{
						i++;
					}

					num_generic_idents++;

					if (meta[i] == '>') break;

					i++;
				}

				i+=2; // skip '>' and ':'
			}

			int base_len = 0;

			while (meta[i] != ',')
			{
				base_len++;
				i++;
			}

			Type* base_type = nullptr;

			if (base_len != 0)
				base_type = GetType(
					std::string_view(&meta[i-base_len], base_len)
				);

			i++;

			std::vector<Type*> interfaces;

			while (1)
			{
				int intfc_len = 0;
				
				while (meta[i] != ',' && meta[i] != '$')
				{
					intfc_len++;
					i++;
				}

				if (intfc_len != 0)
				{
					interfaces.emplace_back(
						GetType(std::string_view(&meta[i-intfc_len], intfc_len))
					);
				}
				
				if (meta[i] == '$') break;

				i++;
			}
			
			while (meta[i] != ';') i++;

			i++; // skip semicolon

			Type* type = assembly->types[const_cast<char*>((ns_name+type_name).c_str())];

			type->is_empty_generic = is_generic;
			type->num_type_args = num_generic_idents;
			type->immediate_base = base_type;
			type->interfaces = interfaces;

			/* Parse Members */

			while (meta[i] != '\n')
			{
				if (meta[i] == '.')
				{
					if (strncmp(&meta[i], ".ctor ", 6) == 0) // constructor
					{
						int attrs = Modifiers::Private | Modifiers::Static;

						i+=6;

						nummember++;

						while (meta[i] != '(')
						{
							char chr = meta[i];

							switch (chr)
							{
								case 'p':
									attrs |= Modifiers::Public;
									break;
								case 'i':
									attrs |= Modifiers::Internal;
									break;
								case 't':
									attrs |= Modifiers::Protected;
									break;
								case 'n':
									attrs |= Modifiers::New;
									break;
								case 'v':
									attrs |= Modifiers::Virtual; // should always be false
									break;
								case 'r':
									attrs |= Modifiers::Readonly;
									break;
							}

							i++;
						}

						i++; // skip open paren

						std::vector<Type*> args = ParseArgs(&i, meta);

						i++; // skip `;`

						if (is_generic) type->AddStaticMember(new ConstructorInfo(args, 0, attrs, true, (char*) addr[nummember]));
						else type->AddStaticMember(new ConstructorInfo(args, addr[nummember], attrs, false));

						continue;
					}

					// this is a strncmp of 5 because .dtor decls have no space
					if (strncmp(&meta[i], ".dtor", 5) == 0) // destructor
					{
						i+=6; // skip the semicolon too (5+1 chars)

						if (is_generic) type->AddStaticMember(new DestructorInfo(nullptr, Modifiers::Private, true, (char*) addr[nummember]));
						else type->AddStaticMember(new DestructorInfo(addr[nummember], Modifiers::Private, false));

					}

					if (strncmp(&meta[i], ".entr ", 6) == 0) // entrypoint
					{
						int attrs = Modifiers::Private;

						i+=6;

						nummember++;

						while (meta[i] != '[' && meta[i] != 'T')
						{
							char chr = meta[i];

							switch (chr)
							{
								case 'p':
									attrs |= Modifiers::Public;
									break;
								case 'i':
									attrs |= Modifiers::Internal;
									break;
								case 't':
									attrs |= Modifiers::Protected;
									break;
								case 'n':
									attrs |= Modifiers::New;
									break;
								case 'v': 
									attrs |= Modifiers::Virtual; // should always be false
									break;
								case 's':
									attrs |= Modifiers::Static; // should always be true
									break;
							}

							i++;
						}

						// i++; // intentional to grab prev bracket

						int full_typename_len = 0; 

						while (meta[i] != ' ')
						{
							full_typename_len++;
							i++;
						}

						std::string full_rettype = std::string(&meta[i-full_typename_len], full_typename_len);

						i++;

						int name_len = 0;

						while (meta[i] != '(')
						{
							name_len++;
							i++;
						}

						std::string func_name = std::string(&meta[i-name_len], name_len); // this should probably be 'Main'
						
						i++; // skip open paren

						std::vector<Type*> argsig = ParseArgs(&i, meta);

						i++; // skip `;`

						if (is_generic) type->AddStaticMember(new MethodInfo(strdup(func_name.c_str()), true, argsig, GetType(full_rettype), 0, attrs, true, (char*) addr[nummember]));
						else type->AddStaticMember(new MethodInfo(strdup(func_name.c_str()), true, argsig, GetType(full_rettype), addr[nummember], attrs, false));

						assembly->entry = (int (*)(char*)) addr[nummember];
						
						continue;
					}

					if (strncmp(&meta[i], ".fldv ", 6) == 0)
					{
						int attrs = Modifiers::Private;

						i+=6;

						nummember++;

						while (meta[i] != '[' && meta[i] != 'T')
						{
							char chr = meta[i];

							switch (chr)
							{
								case 'p':
									attrs |= Modifiers::Public;
									break;
								case 'i':
									attrs |= Modifiers::Internal;
									break;
								case 't':
									attrs |= Modifiers::Protected;
									break;
								case 's':
									attrs |= Modifiers::Static;
									break;
								case 'n':
									attrs |= Modifiers::New;
									break;
								case 'r':
									attrs |= Modifiers::Readonly;
									break;
							}

							i++;
						}

						i++;

						int full_typename_len = 1; // intentional to grab prev bracket

						while (meta[i] != ' ')
						{
							full_typename_len++;
							i++;
						}

						std::string full_type = std::string(&meta[i-full_typename_len], full_typename_len);

						i++;

						int fldname_len = 0;

						while (meta[i] != ';')
						{
							fldname_len++;
							i++;
						}

						std::string fldname = std::string(&meta[i-fldname_len], fldname_len);

						i++; // skip semicolon

						if (attrs & Modifiers::Static)
						{
							if (is_generic) type->AddStaticMember(new FieldInfo(strdup(fldname.c_str()), true, 0, GetType(full_type), attrs, true));
							else type->AddStaticMember(new FieldInfo(strdup(fldname.c_str()), true, addr[nummember], GetType(full_type), attrs, false));
						}
						else
						{
							if (is_generic) type->AddInstanceMember(new FieldInfo(strdup(fldname.c_str()), false, 0, GetType(full_type), attrs, true));
							else type->AddInstanceMember(new FieldInfo(strdup(fldname.c_str()), false, addr[nummember], GetType(full_type), attrs, false));
						}

						continue;
					}


					if (strncmp(&meta[i], ".prop ", 6) == 0)
					{
						int attrs = Modifiers::Private;

						bool has_getter, has_setter = false;

						i+=6;

						nummember++;

						while (meta[i] != '[' && meta[i] != 'T')
						{
							char chr = meta[i];

							switch (chr)
							{
								case 'p':
									attrs |= Modifiers::Public;
									break;
								case 'i':
									attrs |= Modifiers::Internal;
									break;
								case 't':
									attrs |= Modifiers::Protected;
									break;
								case 's':
									attrs |= Modifiers::Static;
									break;
								case 'r':
									attrs |= Modifiers::Readonly;
									break;
								case 'n':
									attrs |= Modifiers::New;
									break;
								case 'v':
									attrs |= Modifiers::Virtual;
									break;
								case 'g':
									has_getter = true;
									break;
								case 'w':
									has_setter = true;
									break;
							}

							i++;
						}

						i++;

						int full_typename_len = 1; // intentional to grab prev bracket

						while (meta[i] != ' ')
						{
							full_typename_len++;
							i++;
						}

						std::string full_type = std::string(&meta[i-full_typename_len], full_typename_len);

						i++;

						int fldname_len = 0;

						while (meta[i] != ';')
						{
							fldname_len++;
							i++;
						}

						std::string propname = std::string(&meta[i-fldname_len], fldname_len);

						i++; // skip semicolon

						MethodInfo* getter = nullptr;
						MethodInfo* setter = nullptr;

						Type* proptype = GetType(full_type);

						if (has_getter)
						{
							getter = new MethodInfo(
								strdup((std::string("get_")+propname).c_str()),
								attrs & Modifiers::Static,
								std::vector<Type*>(),
								proptype,
								addr[nummember],
								attrs,
								is_generic,
								(char*) addr[nummember]
							);
							
							if (has_setter)
							{
								nummember++;

								setter = new MethodInfo(
									strdup((std::string("set_")+propname).c_str()),
									attrs & Modifiers::Static,
									{ proptype },
									GetType("[System]Void"),
									addr[nummember],
									attrs,
									is_generic,
									(char*) addr[nummember]
								);
							}
						}
						else if (has_setter)
						{
							setter = new MethodInfo(
								strdup((std::string("set_")+propname).c_str()),
								attrs & Modifiers::Static,
								{ proptype },
								GetType("[System]Void"),
								addr[nummember],
								attrs,
								is_generic,
								(char*) addr[nummember]
							);
						}

						if (attrs & Modifiers::Static) type->AddStaticMember(new PropertyInfo(strdup(propname.c_str()), true, proptype, getter, setter, attrs, is_generic));
						else type->AddInstanceMember(new PropertyInfo(strdup(propname.c_str()), true, proptype, getter, setter, attrs, is_generic));

						continue;
					}
				}
				
				int attrs = Modifiers::Private;

				nummember++;

				while (meta[i] != '[' && meta[i] != 'T')
				{
					char chr = meta[i];

					switch (chr)
					{
						case 'p':
							attrs |= Modifiers::Public;
							break;
						case 'i':
							attrs |= Modifiers::Internal;
							break;
						case 't':
							attrs |= Modifiers::Protected;
							break;
						case 'a':
							attrs |= Modifiers::Abstract;
							break;
						case 'n':
							attrs |= Modifiers::New;
							break;
						case 'v':
							attrs |= Modifiers::Virtual;
							break;
						case 's':
							attrs |= Modifiers::Static; // should always be true
							break;
					}		

					i++;
				}

				// i++; // intentionally left out to grab prev bracket/'T'

				int full_typename_len = 0;

				while (meta[i] != ' ')
				{
					full_typename_len++;
					i++;
				}

				std::string full_rettype = std::string(&meta[i-full_typename_len], full_typename_len);

				i++; // skip space		

				int name_len = 0;

				while (meta[i] != '(')
				{
					name_len++;
					i++;
				}

				std::string func_name = std::string(&meta[i-name_len], name_len); // this should probably be 'Main'
				
				i++; // skip open paren

				std::vector<Type*> argsig = ParseArgs(&i, meta);

				i++; // skip `;`

				if (attrs & Modifiers::Static)
				{
					if (is_generic) type->AddStaticMember(new MethodInfo(strdup(func_name.c_str()), true, argsig, GetType(full_rettype), 0, attrs, true, (char*) addr[nummember]));
					else type->AddStaticMember(new MethodInfo(strdup(func_name.c_str()), true, argsig, GetType(full_rettype), addr[nummember], attrs, false));
				}
				else
				{
					if (is_generic) type->AddInstanceMember(new MethodInfo(strdup(func_name.c_str()), false, argsig, GetType(full_rettype), 0, attrs, true, (char*) addr[nummember]));
					else type->AddInstanceMember(new MethodInfo(strdup(func_name.c_str()), true, argsig, GetType(full_rettype), addr[nummember], attrs, false));
				}
			}

			i++; // skip newline
		}
		
		LoadedAssemblies[assembly->name] = assembly;

		/* populate vtables */

		for (auto& entry : assembly->types)
		{
			PopulateVtable(entry.second);
		}

		/* end vtable impl */

		void (*init_asm)(Resolver::ULRAPIImpl*) = (void (*)(Resolver::ULRAPIImpl*)) GetProcAddress(assembly->handle, "InitAssembly");

		init_asm(api);

		return assembly;
	}

	std::vector<Type*> ParseArgs(size_t* i, char* meta)
	{
		std::vector<Type*> argtypes;

		while (meta[*i] != ')')
		{
			int start = *i;

			while (meta[*i] != ',' && meta[*i] != ')')
			{
				(*i)++;
			}

			argtypes.emplace_back(GetType(std::string_view(&meta[start], (*i)-start)));

			if (meta[*i] == ',') (*i)++;

		}

		(*i)++;

		return argtypes;
	}

	Type* GetType(std::string_view qual_name)
	{
		if (qual_name[0] == 'T')
		{
			unsigned char generic_num = std::stoul(&qual_name[1]);
			
			for (auto& placeholder : alloced_generic_placeholders)
			{
				if (placeholder->num == generic_num) return placeholder;
			}

			GenericPlaceholder* placeholder = new GenericPlaceholder(generic_num);

			alloced_generic_placeholders.emplace_back(placeholder);

			return placeholder;
		}

		for (const auto& entry: ReadAssemblies)
		{
			Assembly* assembly = entry.second;

			if (assembly->types.count(qual_name) == 1) return assembly->types[qual_name];
		}


		// if array type that is not already found, create it
		size_t len = qual_name.length();

		if (qual_name[len-2] == '[' && qual_name[len-1] == ']') // array type (ends with [])
		{			
			Assembly* ArrayTypeAssembly = LoadedAssemblies["ULR.<ArrayTypes>"];
			
			Type* elem_type = GetType(std::string_view(qual_name.data(), len-2)); // get inner element type (if it is a nested array, recursion will provide us the proper type)

			Type* array_type = new Type(TypeType::ArrayType, ArrayTypeAssembly, strdup(const_cast<const char*>(std::string(qual_name).c_str())), Modifiers::Public | Modifiers::Sealed, 0, { }, GetType("[System]Object"), elem_type);

			PopulateVtable(array_type);

			ArrayTypeAssembly->types[array_type->name] = array_type; // use array_type->name because it is guaranteed to be dynamically allocated and last as long as array_type lasts

			return array_type;
		}

		throw std::runtime_error("Type not found");
	}

	// TODO: make this work for props (prob just add the prop MethodInfos to type attrs during loading)
	// NOTE: must be called after loading
	// TODO: remove a LOT of duplicate work here
	void PopulateVtable(Type* type)
	{
		/* Begin Primary Vtable */

		std::vector<Type*> type_heirarchy;
		std::vector<Type*> impld_interfaces;

		Type* curr_type = type;

		while (curr_type)
		{
			type_heirarchy.emplace(type_heirarchy.begin(), curr_type);

			impld_interfaces.insert(impld_interfaces.end(), curr_type->interfaces.begin(), curr_type->interfaces.end());

			curr_type = curr_type->immediate_base;
		}

		std::vector<MethodInfo*> vfuncs;

		for (Type* parent : type_heirarchy)
		{
			for (auto& entry : parent->inst_attrs)
			{
				if (entry.second[0]->decl_type == MemberType::Method)
				{
					for (auto& member : entry.second)
					{
						MethodInfo* method = (MethodInfo*) member;

						if (method->attrs & Modifiers::Virtual) vfuncs.emplace_back(method);
					}
				}
			}
		}

		void** vtable = new void*[vfuncs.size()];

		for (size_t i = 0; i < vfuncs.size(); i++)
		{
			MethodInfo* info = vfuncs[i];

			MethodInfo* impl = internal_api->GetNonNewMethod(type, info->name, info->argsig, BindingFlags::Public | BindingFlags::NonPublic | BindingFlags::Instance);

			vtable[i] = impl->offset;
		}

		type->primary_vtable = vtable;

		/* End Primary Vtable */



		/* Begin Interface Vtable */

		std::unordered_map<Type*, void**> interface_vtable;

		for (Type* intfc : impld_interfaces)
		{
			std::vector<MethodInfo*> intfc_vfuncs;

			for (auto& entry : intfc->inst_attrs)
			{
				if (entry.second[0]->decl_type == MemberType::Method)
				{
					for (auto& member : entry.second)
					{
						intfc_vfuncs.emplace_back((MethodInfo*) member);
					}
				}
			}

			void** intfc_specific_vtable = new void*[intfc_vfuncs.size()];

			for (size_t i = 0; i < intfc_vfuncs.size(); i++)
			{
				MethodInfo* info = intfc_vfuncs[i];

				MethodInfo* impl = internal_api->GetNonNewMethod(type, info->name, info->argsig, BindingFlags::Public | BindingFlags::Instance);

				intfc_specific_vtable[i] = impl->offset;
			}

			interface_vtable[intfc] = intfc_specific_vtable;
		}

		type->interface_vtable = interface_vtable;

		/* End Interface Vtable */
	}
}