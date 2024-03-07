#include "../Loader.hpp"
#include <memory>
#include <iostream>
#include <string>
#include <map>
#include <vector>

namespace ULR::Loader
{
	std::map<char*, Assembly*, cmp_chr_ptr> ReadAssemblies;
	std::map<char*, Assembly*, cmp_chr_ptr> LoadedAssemblies;

	std::vector<GenericPlaceholder*> alloced_generic_placeholders;

	HMODULE ReadAssembly(char* dll)
	{
		HMODULE mod = LoadLibraryA(dll);

		if (mod == nullptr)
		{
			std::cerr << "fatal: '" << dll << "' not found" << std::endl;
			exit(1);
		}

		char* meta = (char*) GetProcAddress(mod, "ulrmeta");
		void** addr = (void**) GetProcAddress(mod, "ulraddr");

		if (meta == nullptr || addr == nullptr)
		{
			std::cerr << "fatal: '"  << dll << "' is not a valid ULR Assembly";
			exit(1);
		}

		size_t metalen = strlen(meta);

		std::string as_str = dll;
		char* asm_basename = strdup(as_str.substr(as_str.find_last_of("/\\") + 1).c_str());

		Assembly* assembly = new Assembly(
			asm_basename,
			meta,
			metalen,
			addr,
			(char**) GetProcAddress(mod, "ulrlocals"),
			(Type**) GetProcAddress(mod, "ulrlocals_valtypeinfo"),
			(size_t) GetProcAddress(mod, "ulrlocalslen"),
			(size_t**) GetProcAddress(mod, "ulrlocalsmapping"),
			mod
		);

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

	Assembly* LoadAssembly(char* dll, Resolver::ULRAPIImpl* api)
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
					const_cast<char*>(std::string(&meta[i-base_len], base_len).data())
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
						GetType(const_cast<char*>(std::string(&meta[i-intfc_len], intfc_len).c_str()))
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

						if (is_generic) type->AddStaticMember(new MethodInfo(strdup(func_name.c_str()), true, argsig, GetType(const_cast<char*>(full_rettype.c_str())), 0, attrs, true, (char*) addr[nummember]));
						else type->AddStaticMember(new MethodInfo(strdup(func_name.c_str()), true, argsig, GetType(const_cast<char*>(full_rettype.c_str())), addr[nummember], attrs, false));

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
							if (is_generic) type->AddStaticMember(new FieldInfo(strdup(fldname.c_str()), true, 0, GetType(const_cast<char*>(full_type.c_str())), attrs, true));
							else type->AddStaticMember(new FieldInfo(strdup(fldname.c_str()), true, addr[nummember], GetType(const_cast<char*>(full_type.c_str())), attrs, false));
						}
						else
						{
							if (is_generic) type->AddInstanceMember(new FieldInfo(strdup(fldname.c_str()), false, 0, GetType(const_cast<char*>(full_type.c_str())), attrs, true));
							else type->AddInstanceMember(new FieldInfo(strdup(fldname.c_str()), false, addr[nummember], GetType(const_cast<char*>(full_type.c_str())), attrs, false));
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

						Type* proptype = GetType(const_cast<char*>(full_type.c_str()));

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
									GetType(const_cast<char*>("[System]Void")),
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
								GetType(const_cast<char*>("[System]Void")),
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
					if (is_generic) type->AddStaticMember(new MethodInfo(strdup(func_name.c_str()), true, argsig, GetType(const_cast<char*>(full_rettype.c_str())), 0, attrs, true, (char*) addr[nummember]));
					else type->AddStaticMember(new MethodInfo(strdup(func_name.c_str()), true, argsig, GetType(const_cast<char*>(full_rettype.c_str())), addr[nummember], attrs, false));
				}
				else
				{
					if (is_generic) type->AddInstanceMember(new MethodInfo(strdup(func_name.c_str()), false, argsig, GetType(const_cast<char*>(full_rettype.c_str())), 0, attrs, true, (char*) addr[nummember]));
					else type->AddInstanceMember(new MethodInfo(strdup(func_name.c_str()), true, argsig, GetType(const_cast<char*>(full_rettype.c_str())), addr[nummember], attrs, false));
				}
			}

			i++; // skip newline
		}
		
		LoadedAssemblies[assembly->name] = assembly;

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

			argtypes.emplace_back(GetType(const_cast<char*>(std::string(&meta[start], (*i)-start).c_str())));

			if (meta[*i] == ',') (*i)++;

		}

		(*i)++;

		return argtypes;
	}

	Type* GetType(char* qual_name)
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
		size_t len = strlen(qual_name);

		if (qual_name[len-2] == '[' && qual_name[len-1] == ']') // array type (ends with [])
		{			
			Assembly* ArrayTypeAssembly = LoadedAssemblies["ULR.<ArrayTypes>"];
			
			Type* elem_type = GetType(const_cast<char*>(std::string(qual_name, len-2).c_str())); // get inner element type (if it is a nested array, recursion will provide us the proper type)

			Type* array_type = new Type(TypeType::ArrayType, ArrayTypeAssembly, strdup(qual_name), Modifiers::Public | Modifiers::Sealed, 0, { }, GetType("[System]Object"), elem_type);

			ArrayTypeAssembly->types[array_type->name] = array_type; // use array_type->name because it is guaranteed to be dynamically allocated and last as long as array_type lasts

			return array_type;
		}

		throw std::runtime_error("Type not found");
	}
}