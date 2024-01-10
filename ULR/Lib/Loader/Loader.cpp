#include "../Loader.hpp"
#include <memory>
#include <iostream>
#include <string>
#include <map>
#include <vector>

namespace ULR::Loader
{
	std::map<std::string, std::shared_ptr<Assembly>> ReadAssemblies;
	std::map<std::string, std::shared_ptr<Assembly>> LoadedAssemblies;

	HMODULE ReadAssembly(std::string dll)
	{
		HMODULE mod = LoadLibrary(dll.c_str());

		std::string meta = std::string((char*) GetProcAddress(mod, "ulrmeta"));
		void** addr = (void**) GetProcAddress(mod, "ulraddr");

		std::shared_ptr<Assembly> assembly = std::make_shared<Assembly>(dll, meta, addr);

		size_t i = 0;
		size_t metalen = meta.length();

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

			std::string ns_name = std::string(&meta[i-ns_len], ns_len);

			i++;

			int typename_len = 0;

			while (meta[i] != '$')
			{
				typename_len++;
				i++;
			}

			std::string type_name = std::string(&meta[i-typename_len], typename_len);

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

			std::shared_ptr<Type> type = std::make_shared<Type>(class_type, (ns_name+type_name), modflags);

			/* Skip Members */

			while (meta[i] != '\n') i++;

			assembly->types[type->name] = type;

			i++; // skip newline
		}

		ReadAssemblies[dll] = assembly;

		return mod;
	}

	std::shared_ptr<Assembly> LoadAssembly(std::string dll)
	{
		if (LoadedAssemblies.count(dll) == 1) return LoadedAssemblies[dll];
		if (ReadAssemblies.count(dll) == 0) throw std::runtime_error(std::string("Attempted to load assembly '")+dll+std::string("' without reading it first"));

		std::shared_ptr<Assembly> assembly = ReadAssemblies[dll];

		std::string meta = assembly->meta;
		void** addr = assembly->addr;

		size_t i = 0;
		size_t metalen = meta.length();
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

			std::string ns_name = std::string(&meta[i-ns_len], ns_len);

			i++;

			int typename_len = 0;

			while (meta[i] != '$')
			{
				typename_len++;
				i++;
			}

			std::string type_name = std::string(&meta[i-typename_len], typename_len);

			while (meta[i] != ';') i++;

			i++; // skip semicolon

			std::shared_ptr<Type> type = assembly->types[(ns_name+type_name).c_str()];

			/* Parse Members */

			while (meta[i] != '\n')
			{
				if (meta[i] == '.')
				{
					if (strncmp(&meta[i], ".ctor ", 6) == 0) // constructor
					{
						int attrs = Modifiers::Private;

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

						std::vector<std::shared_ptr<Type>> args = ParseArgs(&i, meta);

						i++; // skip `;`

						type->AddStaticMember(std::make_shared<MethodInfo>(MemberType::Ctor, ".ctor", true, addr[nummember], attrs));
						continue;
					}

					if (strncmp(&meta[i], ".entr ", 6) == 0) // entrypoint
					{
						int attrs = Modifiers::Private;

						i+=6;

						nummember++;

						while (meta[i] != '[')
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

						i++;

						int ns_len = 0;

						while (meta[i] != ']')
						{
							ns_len++;
							i++;
						}

						std::string ns_name = std::string(&meta[i-ns_len], ns_len);

						i++; // skip close bracket

						int typename_len = 0;

						while (meta[i] != ' ')
						{
							typename_len++;
							i++;
						}

						std::string ret_type_name = std::string(&meta[i-typename_len], typename_len);

						i++; // skip space		

						std::string full_rettype = (ns_name+ret_type_name);

						int name_len = 0;

						while (meta[i] != '(')
						{
							name_len++;
							i++;
						}

						std::string func_name = std::string(&meta[i-name_len], name_len); // this should probably be 'Main'
						
						i++; // skip open paren

						std::vector<std::shared_ptr<Type>> args = ParseArgs(&i, meta);

						i++; // skip `;`

						type->AddStaticMember(std::make_shared<MethodInfo>(MemberType::Method, func_name, true, addr[nummember], attrs));
						
						assembly->entry = (int (*)()) addr[nummember];
						
						continue;
					}

					if (strncmp(&meta[i], ".fldv ", 6) == 0)
					{
						throw std::runtime_error("Field decls currently not supported in ULR metadata");
					}
				}
				
				int attrs = Modifiers::Private;

				nummember++;

				while (meta[i] != '[')
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

				i++;

				int ns_len = 0;

				while (meta[i] != ']')
				{
					ns_len++;
					i++;
				}

				std::string ns_name = std::string(&meta[i-ns_len], ns_len);

				i++; // skip close bracket

				int typename_len = 0;

				while (meta[i] != ' ')
				{
					typename_len++;
					i++;
				}

				std::string ret_type_name = std::string(&meta[i-typename_len], typename_len);

				i++; // skip space		

				std::string full_rettype = (ns_name+ret_type_name);

				int name_len = 0;

				while (meta[i] != '(')
				{
					name_len++;
					i++;
				}

				std::string func_name = std::string(&meta[i-name_len], name_len); // this should probably be 'Main'
				
				i++; // skip open paren

				std::vector<std::shared_ptr<Type>> args = ParseArgs(&i, meta);

				i++; // skip `;`

				if (attrs & Modifiers::Static) type->AddStaticMember(std::make_shared<MethodInfo>(MemberType::Method, func_name, true, addr[nummember], attrs));
				else type->AddInstanceMember(std::make_shared<MethodInfo>(MemberType::Method, func_name, false, addr[nummember], attrs));
			}

			i++; // skip newline

			std::cout << meta[i];
		}

		LoadedAssemblies[dll] = assembly;

		return assembly;
	}

	std::vector<std::shared_ptr<Type>> ParseArgs(size_t* i, std::string meta)
	{
		std::vector<std::shared_ptr<Type>> argtypes;

		while (meta[*i] != ')')
		{
			int start = *i;

			while (meta[*i] != ',' && meta[*i] != ')')
			{
				(*i)++;
			}

			argtypes.emplace_back(GetType(std::string(&meta[start], (*i)-start)));

			if (meta[*i] == ',') (*i)++;

		}

		(*i)++;

		return argtypes;
	}

	std::shared_ptr<Type> GetType(std::string qual_name) // note that this will not work since types could accept an inst of themselves or their own asm as an arg, since the types are ptrs it would work if each type is analyzed by name first and then later fully loaded (same as lazy loading strategy)
	{
		for (const auto& entry: ReadAssemblies)
		{
			std::shared_ptr<Assembly> assembly = entry.second;

			if (assembly->types.count(qual_name.c_str()) == 1) return assembly->types[qual_name.c_str()];
		}

		throw std::runtime_error("Type not found");
	}
}