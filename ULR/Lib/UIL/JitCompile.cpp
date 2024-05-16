#include "../UIL.hpp"
#include <stack>

namespace ULR::IL
{
	namespace Helpers
	{
		class StackValueExpression
		{
			enum ExpressionType
			{
				StringLiteral,
				IntegerConstant,
				FloatConstant,
				FieldLookup,
				FuncRetValue,
				LocalLookup,
				ArrayLookup
			};

			ExpressionType expr_type;
		};

		using EvalStack = std::stack<StackValueExpression>;

		using LocalLookupTable = std::vector<int>;

		// this only works in little endian
		std::vector<byte> convert_to_rbp_offset(int offset) 
		{
			if (offset <= 0)
			{
				if (offset >= -128) return { (byte) (256+offset) };

				int reverse_offset = UINT32_MAX+offset;

				return std::vector<byte>(reinterpret_cast<byte*>(reverse_offset), reinterpret_cast<byte*>(reverse_offset)+4);	
			}


			if (offset >= 128)
			{
				return std::vector<byte>(reinterpret_cast<byte*>(offset), reinterpret_cast<byte*>(offset)+4);
			}

			return { (byte) offset };
		}
	}

	JITContext::JITContext(Resolver::ULRAPIImpl* api)
	{
		this->api = api;
	}

	std::string_view JITContext::LookupString(byte il_of_string_ref[], byte string_ref[]) // every string reference takes four bytes - two to specify the offset from string_ref and two to specify the length of the string
	{
		assert((sizeof(char) == 1) && sizeof(char) == sizeof(byte));

		uint16_t offset = *((uint16_t*) il_of_string_ref);
		uint16_t length = *(((uint16_t*) il_of_string_ref)+1);

		return std::string_view(((char*) string_ref)+offset, length);
	}

	CompilationError JITContext::Compile(Assembly* meta_asm, byte il[], byte string_ref[])
	{
		return StackBaseCompile(meta_asm, il, string_ref);
	}

	// TODO: add support for ctors and dtors
	// TODO: add support for generic IL
	// NOTE: consider using std::list due to all the insertions and lack of random access
	// NOTE: this compiles for little endian, check system endianness and use correct endian -- upon further thought this may not be an issue since endianness would also apply to the assembled assembly
	CompilationError JITContext::StackBaseCompile(Assembly* meta_asm, byte il[], byte string_ref[])
	{
		Helpers::EvalStack eval_stack;

		size_t i = 0;

		std::map<byte*, MemberInfo*> replace_addrs;
		std::map<MemberInfo*, std::vector<byte>> dynamic_code; // maybe make std::vector<byte>&

		/* FIRST PASS - MAP OUT ASSEMBLY METADATA */
		while (il[i] != OpCodes::EndAssembly)
		{
			if (il[i] != OpCodes::BeginType)
			{
				return { "Expected type declaration signal", CompilationError::ErrorCode::TypeExpected, &il[i] };
			}

			i++;

			TypeType decl_type = (TypeType) il[i];

			i++;

			Modifiers attrs = (Modifiers) *((uint16_t*) &il[i]);

			i+=2;

			size_t size = *((uint32_t*) &il[i]); // yes, the size is supposed to be a size_t but objects shouldn't (and can't) be larger than UINT32_MAX, so only four bytes are needed to store the size

			Type* type = new Type(decl_type, meta_asm, strdup(std::string(LookupString(&il[i], string_ref)).c_str()), attrs, size, {}, nullptr, false, 0);

			i+=4; // skip four bytes from name string lookup


			i+=4; // skip what would be the string lookup for the type's base

			while (il[i] != OpCodes::EndTypeMeta) i+=4; // skip what would be a string lookup for an implemented interface

			i++; // skip EndTypeMeta signal

			while (il[i] != OpCodes::EndType)
			{
				if (il[i] == OpCodes::FieldDecl)
				{
					i++;

					char* name = strdup(std::string(LookupString(&il[i], string_ref)).c_str());

					i+=4; // skip four bytes of stringref

					Modifiers attrs = (Modifiers) *((uint16_t*) &il[i]);

					// skip two bytes of modifiers
					i+=2;

					i+=4; // skip four bytes of what should be a valtype string lookup

					if (attrs & Modifiers::Static)
					{
						FieldInfo* info = new FieldInfo(name, true, nullptr, nullptr, attrs, false);

						type->AddStaticMember(info);
					}
					else
					{
						uint16_t offset = *((uint16_t*) &il[i]);

						i+=2; // skip two bytes of offset
				
						FieldInfo* info = new FieldInfo(name, false, (void*) offset, nullptr, attrs, false);

						type->AddInstanceMember(info);
					}
				}
				else if (il[i] == OpCodes::BeginMethod)
				{
					i++;

					i++; // skip what would be the overload number

					char* name = strdup(std::string(LookupString(&il[i], string_ref)).c_str());
					i+=4; // skip four bytes of string lookup
					
					Modifiers attrs = (Modifiers) *((uint16_t*) &il[i]);

					// skip two bytes of modifiers
					i+=2;

					i+=4; // skip four bytes of what should be a string lookup for rettype

					size_t method_size = *((uint32_t*) &il[i]);

					i+=4; // skip four bytes of method size

					i+=method_size;

					if (attrs & Modifiers::Static)
					{
						type->AddStaticMember(new MethodInfo(name, true, { }, nullptr, nullptr, attrs, false));
					}
					else
					{
						type->AddInstanceMember(new MethodInfo(name, false, { }, nullptr, nullptr, attrs, false));
					}
				}
				else return { "Expected field or method declaration signal", CompilationError::ErrorCode::MemberExpected, &il[i] };
			}

			meta_asm->types[type->name] = type;

			i++;
		}

		(*api->read_assemblies)[meta_asm->name] = meta_asm;
		(*api->assemblies)[meta_asm->name] = meta_asm;

		char* (*special_string_MAKE_FROM_LITERAL)(const char* str, int len) = (char* (*)(const char*, int)) api->LocateSymbol(api->LocateAssembly("Sytstem.Runtime.Native.dll"), "special_string_MAKE_FROM_LITERAL");

		/* SECOND PASS - IL TO ASSEMBLED BYTES */
		while (il[i] != OpCodes::EndAssembly)
		{
			if (il[i] != OpCodes::BeginType)
			{
				return { "Expected type declaration signal", CompilationError::ErrorCode::TypeExpected, &il[i] };
			}

			i++;

			Type* type = api->GetType("");

			while (il[i] != OpCodes::EndType)
			{
				if (il[i] == OpCodes::FieldDecl)
				{
					i++;

					std::string namecpp = std::string(LookupString(&il[i], string_ref));

					char* name = const_cast<char*>(namecpp.c_str());

					i+=4; // skip four bytes of stringref

					Modifiers attrs = (Modifiers) *((uint16_t*) &il[i]);

					i+=2;

					Type* valtype = api->GetType(const_cast<char*>(std::string(LookupString(&il[i], string_ref)).c_str()));

					i+=4; // skip four bytes of string lookup

					if (attrs & Modifiers::Static)
					{
						FieldInfo* field = (FieldInfo*) type->static_attrs[name][0];

						void* offset = malloc(valtype->size);

						malloc_alloced.push_back(offset);

						field->offset = offset;
						field->valtype = valtype;
					}
					else
					{
						FieldInfo* field = (FieldInfo*) type->inst_attrs[name][0];

						i+=2; // skip two bytes of what would be offset

						field->valtype = valtype;
					}
				}
				else if (il[i] == OpCodes::BeginMethod)
				{
					std::vector<Type*> argsig;
					Type* rettype;
					Modifiers modifiers;

					std::vector<byte> code(16);
					Helpers::LocalLookupTable locals;
					size_t locals_size;

					i++;

					byte overload_number = il[i];

					i++;

					std::string namecpp = std::string(LookupString(&il[i], string_ref));
					i+=4; // skip four bytes of string ref
					
					Modifiers attrs = (Modifiers) *((uint16_t*) &il[i]);

					// skip two bytes of modifiers
					i+=2;

					Type* rettype = api->GetType(std::string(LookupString(&il[i], string_ref)).data());

					i+=4; // skip four bytes of string lookup for rettype

					i+=4; // skip four bytes of what would be method size

					MethodInfo* curr_method;

					if (attrs & Modifiers::Static)
					{
						curr_method = (MethodInfo*) type->static_attrs[namecpp.data()][overload_number];
					}
					else
					{
						curr_method = (MethodInfo*) type->inst_attrs[namecpp.data()][overload_number];
					}

					while (il[i] != OpCodes::EndMethod)
					{
						byte opcode = il[i];

						switch (opcode)
						{
							case OpCodes::LocalDecl:
								i++;
								{
									Type* lcl_type = api->GetType(std::string(LookupString(&il[i], string_ref)).data());
									i+=4; // skip four bytes for string lookup

							
									if (il[i] == Flags::ArgumentPassed)
									{
										argsig.push_back(lcl_type);

										std::vector<byte> offset;

										switch (argsig.size()) // TODO: make diff instrs for 1, 2, 4, and 8 byte argvals
										{
											case 1: // mov [rbp+16], rcx
												locals.push_back(16);

												code.insert(code.end(), { 0x48, 0x89, 0x4D, 0x10 });
												break;
											case 2: // mov [rbp+24], rdx
												locals.push_back(24);

												code.insert(code.end(), { 0x48, 0x89, 0x55, 0x18 });
												break;
											case 3: // mov [rbp+32], r8
												locals.push_back(32);

												code.insert(code.end(), { 0x4C, 0x89, 0x45, 0x20 });
												break;												
											case 4: // mov [rbp+40], r9
												locals.push_back(40);

												code.insert(code.end(), { 0x4C, 0x89, 0x4D, 0x28 });
												break;												
											default:
												locals.push_back((48+(argsig.size()-6)*8)); // todo: find which stack addr args start from (replace 64)
												// for above also see argsig.size() may need to use total args-argsig.size() (reverse take) (grab total args from reading phase?)
												break;
										}
									}
									else if (il[i] == Flags::LocalVariable)
									{
										locals.push_back(-locals_size);

										locals_size+=lcl_type->size;
									}
									else
									{
										return { "Either argument-passed or normal local variable local var type expected", CompilationError::ErrorCode::LocalTypeExpected, &il[i] };
									}
								}

								break;
							case OpCodes::Add:
								i++;
								code.push_back(0x58); // pop rax
								code.insert(code.end(), { 0x48, 0x01, 0x04, 0x24 }); // add [rsp], rax
								break;
							case OpCodes::Sub:
								i++;
								code.push_back(0x58); // pop rax
								code.insert(code.end(), { 0x48, 0x29, 0x04, 0x24 }); // sub [rsp], rax
								break;
							case OpCodes::Mul:
								i++;
								code.push_back(0x58); // pop rax
								code.push_back(0x5D); // pop rbp
								code.insert(code.end(), { 0x48, 0xF7, 0xE5 }); // mul rbp
								code.push_back(0x50); // push rax
								break;

							/* go in order */
							case OpCodes::LdStr:
								i++;
								
								std::string_view str = LookupString(&il[i], string_ref);

								char* ulrstr = special_string_MAKE_FROM_LITERAL(str.data(), str.length());

								// mov rax, ulrstr
								code.insert(code.end(), { 0x48, 0xB8 });
								code.insert(code.end(), &ulrstr, (&ulrstr)+sizeof(ulrstr));
								
								code.push_back(0x50); // push rax
								break;
							case OpCodes::LdNC:
								i++;

								NumericalTypeIdentifier constant_type = (NumericalTypeIdentifier) il[i];

								i++;

								switch (constant_type)
								{

								}

								break;

							case OpCodes::LdFld:
								i++;

								Flags binding = (Flags) il[i];

								i++;

								if (binding == Flags::Static)
								{
									std::string type_name_cpp = std::string(LookupString(&il[i], string_ref));

									i+=4; // from string ref

									std::string field_name_cpp = std::string(LookupString(&il[i], string_ref));

									i+=4; // from string ref

									FieldInfo* field = (FieldInfo*) api->GetType(type_name_cpp.data())->static_attrs[field_name_cpp.data()][0];

									if ((field->valtype->decl_type == TypeType::Struct) && (field->valtype->size != 8)) // unfriendly struct types
									{
										switch (field->valtype->size)
										{
											case 1:
												/*
													mov rax, 0x0 (addr filled later)
													movzx rax, byte ptr [rax]
												*/
												code.insert(code.end(), { 0x48, 0xB8 }); // mov rax,

												replace_addrs[&code[code.size()]] = field;

												code.insert(code.end(), sizeof(void*), 0); // 0x0 (address will be filled later)

												code.insert(code.end(), { 0x48, 0x0F, 0xB6, 0x00 }); // movzx rax, byte ptr [rax]
												break;
											case 2:
												/*
													mov rax, 0x0 (addr filled later)
													movzx rax, word ptr [rax]
												*/

												code.insert(code.end(), { 0x48, 0xB8 }); // mov rax,

												replace_addrs[&code[code.size()]] = field;

												code.insert(code.end(), sizeof(void*), 0); // 0x0 (address will be filled later)

												code.insert(code.end(), { 0x48, 0x0F, 0xB7, 0x00 }); // movzx rax, byte ptr [rax]										
												break;
											case 4:
												/*
													mov eax, [0x0] (addr filled later)
												*/

												code.push_back(0xA1); // mov eax,
												
												replace_addrs[&code[code.size()]] = field;

												code.insert(code.end(), sizeof(void*), 0); // [0x0] (address will be filled later)
												break;
											default:
												code.insert(code.end(), { 0x48, 0xB8 }); // mov, rax

												replace_addrs[&code[code.size()]] = field;

												code.insert(code.end(), sizeof(void*), 0); // 0x0 (address will be filled later)
												break;
										}

									}
									else // reference types and 8-byte struct types
									{
										code.insert(code.end(), { 0x48, 0xA1, }); // mov rax,

										replace_addrs[&code[code.size()]] = field;

										code.insert(code.end(), sizeof(void*), 0); // [0x0] (address will be filled later)
									}
								}
								else if (binding == Flags::Instance)
								{
									std::string type_name_cpp = std::string(LookupString(&il[i], string_ref));

									i+=4; // from string ref

									std::string field_name_cpp = std::string(LookupString(&il[i], string_ref));

									i+=4; // from string ref

									FieldInfo* field = (FieldInfo*) api->GetType(type_name_cpp.data())->static_attrs[field_name_cpp.data()][0];

									// pop the object from the eval stack, add the offset & dereference

									uint32_t offset = (uint32_t) field->offset;

									if ((field->valtype->decl_type == TypeType::Struct) && (field->valtype->size != 8)) // unfriendly struct types
									{
										switch (field->valtype->size)
										{
											case 1:
												/*
													pop rax
													movzx rax, byte [rax+field_offset]
												*/
												code.insert(code.end(), { 0x48, 0x0F, 0xB6, 0x80 });
												code.insert(code.end(), &offset, (&offset)+1);
												break;
											case 2:
												/*
													pop rax
													movzx rax, word [rax+field_offset]
												*/
												code.insert(code.end(), { 0x48, 0x0F, 0xB7, 0x80 });
												code.insert(code.end(), &offset, (&offset)+1);
												break;
											case 4:
												/*
													pop rax
													mov eax, [rax+field_offset]
												*/
												code.insert(code.end(), { 0x8B, 0x80 });
												code.insert(code.end(), &offset, (&offset)+1);
												break;
											default:
												/*
													pop rax
													lea rax, [rax+field_offset]
												*/
												code.insert(code.end(), { 0x58, 0x48, 0x8D, 0x80 });
												code.insert(code.end(), &offset, (&offset)+1);

												break;
										}

									}
									else // reference types and 8-byte struct types
									{
										/*
											pop rax
											mov rax, [rax+field_offset]
										*/
										code.insert(code.end(), { 0x58, 0x48, 0x8B, 0x80 });
										code.insert(code.end(), &offset, (&offset)+1);
									}
								}

								code.push_back(0x50); // push rax (push loaded field to the eval stack)
								break;
							default:
								return { "Unknown opcode", CompilationError::ErrorCode::InvalidInstr, &il[i] };
								break;
						}
					}
					
					std::vector<byte> offset = Helpers::convert_to_rbp_offset(locals_size);

					// the three lines below insert the prolog (in reverse order visually but forward order in reality)
					// push rbp
	     			// move rbp, rsp
					// sub rsp, locals_size

					code.insert(code.begin(), offset.begin(), offset.end());
					if (offset.size() == 1) code.insert(code.begin(), { 0x83, 0xEC });
					else code.insert(code.begin(), { 0x81, 0xEC });
					code.insert(code.begin(), { 0x55, 0x48, 0x89, 0xE5, 0x48 });


					// epilog
					// add rsp, locals_size
					// pop rbp
					// ret

					code.insert(code.end(), { 0x48, 0x83, 0xC4 });
					code.insert(code.end(), offset.begin(), offset.end());
					code.push_back(0x5D); // pop rbp
					code.push_back(0xC3); // ret

					i++;

					void* funcaddr = VirtualAlloc(NULL, code.size(), MEM_COMMIT, PAGE_READWRITE);

					virt_alloced.push_back(funcaddr);

					// TODO: fix when new generic system is impl'd
					
					curr_method->argsig = argsig;
					curr_method->rettype = rettype;
					curr_method->offset = funcaddr;
				
					dynamic_code[curr_method] = code;
				}
				else return { "Expected field or method declaration signal", CompilationError::ErrorCode::MemberExpected, &il[i] };
			}

			i++;
		}

		/* THIRD PASS - RESOLVE FUNCTION AND FIELD ADDRS */
		for (const auto& entry : replace_addrs)
		{
			switch (entry.second->decl_type)
			{
				case MemberType::Method:
					memcpy(entry.first, &((MethodInfo*) entry.second)->offset, sizeof(void*));
					break;
				case MemberType::Field:
					memcpy(entry.first, &((FieldInfo*) entry.second)->offset, sizeof(void*));
 					break;
				case MemberType::Ctor:
					memcpy(entry.first, &((ConstructorInfo*) entry.second)->offset, sizeof(void*));
					break;
			}
		}

		/* FINISH COMPILATION - COPY BYTES OVER */
		for (auto& entry : dynamic_code)
		{
			void* offset;
			
			switch (entry.first->decl_type)
			{
				case MemberType::Method:
					offset = ((MethodInfo*) entry.first)->offset;
					break;
				case MemberType::Ctor:
					offset = ((ConstructorInfo*) entry.first)->offset;
 					break;
				case MemberType::Dtor:
					offset = ((DestructorInfo*) entry.first)->offset;
					break;
			}

			DWORD discard;
			size_t func_size = entry.second.size();

			memcpy(offset, &entry.second[0], func_size);
			VirtualProtect(offset, func_size, PAGE_EXECUTE_READ, &discard);
		}

		return NoError;
	}

	JITContext::~JITContext()
	{
		for (const auto alloced : virt_alloced)
		{
			#ifdef _WIN64
				VirtualFree(alloced, 0, MEM_RELEASE);
			#else

			#error "No UIL JIT support for non-windows x64 platforms currently"

			#endif
		}

		for (const auto alloced : malloc_alloced)
		{
			free(alloced);
		}
	}
}