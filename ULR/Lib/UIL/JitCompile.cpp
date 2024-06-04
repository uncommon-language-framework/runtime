#include "../UIL.hpp"
#include <stack>

#define HELPER_MARKER(num)
#define TODO_ADD_ASM add asm bytes;

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

		struct LocalInfo
		{
			int offset;
			size_t size;
		};

		using LocalLookupTable = std::vector<LocalInfo>;		
	}

	JITContext::JITContext(Resolver::ULRAPIImpl* api)
	{
		this->api = api;
	}

	std::string_view JITContext::LookupString(byte il_of_string_ref[], byte string_ref[]) // every string reference takes four bytes - two to specify the offset from string_ref and two to specify the length of the string
	{
		static_assert((sizeof(char) == 1) && (sizeof(char) == sizeof(byte)));

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
	// TODO: add support for float operations (within the switch case statements)
	// TODO: ensure that evaluation stack is clear before returning (just use a counter var and add necessary bytes to rsp in epilogs)
	// NOTE: consider using std::list due to all the insertions and lack of random access
	// NOTE: this compiles for little endian, check system endianness and use correct endian -- upon further thought this may not be an issue since endianness would also apply to the assembled assembly
	CompilationError JITContext::StackBaseCompile(Assembly* meta_asm, byte il[], byte string_ref[])
	{
		Helpers::EvalStack eval_stack;

		size_t i = 0;

		std::map<byte*, MemberInfo*> replace_addrs;
		std::map<MemberInfo*, std::vector<byte>> dynamic_code;

		/* FIRST PASS - MAP OUT ASSEMBLY METADATA */
		while (il[i] != EndAssembly)
		{
			if (il[i] != BeginType)
			{
				return { "Expected type declaration signal", CompilationError::ErrorCode::TypeExpected, &il[i] };
			}

			i++;

			TypeType decl_type = (TypeType) il[i];

			i++;

			Modifiers attrs = (Modifiers) *((uint16_t*) &il[i]);

			i+=2;

			size_t size = *((uint32_t*) &il[i]); // yes, the size is supposed to be a size_t but objects shouldn't (and can't) be larger than UINT32_MAX, so only four bytes are needed to store the size

			i+=4; // skip four bytes from size 

			Type* type = new Type(decl_type, meta_asm, strdup(std::string(LookupString(&il[i], string_ref)).c_str()), attrs, size, {}, nullptr, false, 0);

			i+=4; // skip four bytes from name string lookup


			i+=4; // skip what would be the string lookup for the type's base

			while (il[i] != EndTypeMeta) i+=4; // skip what would be a string lookup for an implemented interface

			i++; // skip EndTypeMeta signal

			while (il[i] != EndType)
			{
				if (il[i] == FieldDecl)
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
				
						FieldInfo* info = new FieldInfo(name, false, (void*) (intptr_t) offset, nullptr, attrs, false);

						type->AddInstanceMember(info);
					}
				}
				else if (il[i] == BeginMethod)
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

					// method args
					while (il[i] != OpCodes::EndSection)
					{
						i+=4; // skip what would be a string lookup for typename
					}

					i++; // skip EndSection opcode

					// end method arg lookup

					i+=method_size;

					i+=1; // skip EndMethod OpCode, TODO: check if this is actually EndMethod and if not, throw err

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

		char* (*special_string_MAKE_FROM_LITERAL)(const char* str, int len) = (char* (*)(const char*, int)) api->LocateSymbol(api->LocateAssembly("System.Runtime.Native.dll"), "special_string_MAKE_FROM_LITERAL");

		i = 0;

		/* SECOND PASS - IL TO ASSEMBLED BYTES */
		while (il[i] != EndAssembly)
		{
			if (il[i] != BeginType)
			{
				return { "Expected type declaration signal", CompilationError::ErrorCode::TypeExpected, &il[i] };
			}

			i++;

			i++; // skip byte of type decl type (e.g. class, struct, record, etc.)

			i+=2; // skip two bytes of what would be attrs/modifiers

			i+=4; // skip four bytes of what would be  size 

			Type* type = meta_asm->types[std::string(LookupString(&il[i], string_ref)).data()];

			i+=4; // skip four bytes from name string lookup

			type->immediate_base = api->GetType(std::string(LookupString(&il[i], string_ref)).data());

			i+=4; // skip four bytes for string lookup for the type's base

			while (il[i] != EndTypeMeta)
			{
				type->interfaces.push_back(
					api->GetType(std::string(LookupString(&il[i], string_ref)).data())
				);

				i+=4; // skip four bytes of string lookup for an implemented interface
			}

			i++; // skip EndTypeMeta signal

			while (il[i] != EndType)
			{
				if (il[i] == FieldDecl)
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
				else if (il[i] == BeginMethod)
				{
					Helpers::LocalLookupTable locals;
					Helpers::LocalLookupTable argpassedlocals;
					unsigned int locals_size = 0;
					unsigned int num_eval_stack_elems = 0;

					unsigned int copy_to_rbp_offset_for_return = 0;

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

					std::vector<byte>& code = dynamic_code[curr_method];
					code.reserve(40);

					curr_method->rettype = rettype;

					if (IsBoxableStruct(rettype) && !IsFriendlyStructSizex64(rettype))
					{
						// temporarily drop rettype in argsig since it should take up the first slot in reality

						copy_to_rbp_offset_for_return = 16; // rbp+16 should be the addr of the first arg when below is exec'd

						code.insert(code.end(), { 0x48, 0x89, 0x4D, 0x10 }); // mov [rbp+16], rcx

						curr_method->argsig.push_back(rettype);
					}

					// method args
					while (il[i] != OpCodes::EndSection)
					{
						std::string argname = std::string(LookupString(&il[i], string_ref));

						i+=4; // skip four for argtype stringref

						Type* argtype = api->GetType(argname.data());

						size_t arg_store_size = IsBoxableStruct(argtype) ? argtype->size : 8; 

						curr_method->argsig.push_back(argtype);
						
						switch (curr_method->argsig.size()) // TODO: make diff instrs for 1, 2, 4, and 8 byte argvals
						{
							case 1: // mov [rbp+16], rcx
								argpassedlocals.push_back({ 16, arg_store_size });

								code.insert(code.end(), { 0x48, 0x89, 0x4D, 0x10 });
								break;
							case 2: // mov [rbp+24], rdx
								argpassedlocals.push_back({ 24, arg_store_size });

								code.insert(code.end(), { 0x48, 0x89, 0x55, 0x18 });
								break;
							case 3: // mov [rbp+32], r8
								argpassedlocals.push_back({ 32, arg_store_size });

								code.insert(code.end(), { 0x4C, 0x89, 0x45, 0x20 });
								break;												
							case 4: // mov [rbp+40], r9
								argpassedlocals.push_back({ 40, arg_store_size });

								code.insert(code.end(), { 0x4C, 0x89, 0x4D, 0x28 });
								break;												
							default:
								argpassedlocals.push_back({ (int) (48+(curr_method->argsig.size()-6)*8), arg_store_size }); // todo: find which stack addr args start from (replace 64)
								// for above also see argsig.size() may need to use total args-argsig.size() (reverse take) (grab total args from reading phase?)
								break;
						}
					}

					i++; // skip EndSection opcode

					// end get method args

					if (copy_to_rbp_offset_for_return)
					{
						// remove the first artificially added arg (see where) `copy_to_rbp_offset_for_return` is set
						curr_method->argsig.erase(curr_method->argsig.begin(), curr_method->argsig.begin()+1); 
					}


					while (il[i] != EndMethod)
					{
						byte opcode = il[i];

						switch (opcode)
						{
							case LocalDecl:
								i++;
								{
								
									Type* lcl_type = api->GetType(std::string(LookupString(&il[i], string_ref)).data());
									size_t lcl_store_size = IsBoxableStruct(lcl_type) ? lcl_type->size : 8; 


									i+=4; // skip four bytes for string lookup

									locals.push_back({ (int) (-locals_size), lcl_store_size });

									locals_size+=lcl_type->size; // todo: check if this offset is correct
								}
								break;
							case Add:
								num_eval_stack_elems-=1; // net change
								
								i++;
								
								{
									NumericalTypeIdentifier constant_type = (NumericalTypeIdentifier) il[i];

									i++;

									code.push_back(0x58); // pop rax


									switch (constant_type)
									{
										case Int8: // all of these fall into the int32 case, since it has the shortest instr length
										case UInt8:
										case Int16:
										case UInt16:
										case Int32:
										case UInt32:
											code.insert(code.end(), { 0x01, 0x04, 0x24 });

											break;
										case Int64:
										case UInt64:
											code.insert(code.end(), { 0x48, 0x01, 0x04, 0x24 }); // add [rsp], rax

											break;																													
										default:
											return { "Invalid numerical type identifier", CompilationError::ErrorCode::InvalidTypeIdentifer, &il[i]};
									}
								}

								break;
							case Sub: // TODO: needs fix
								num_eval_stack_elems-=1; // net change

								i++;

								{

									NumericalTypeIdentifier constant_type = (NumericalTypeIdentifier) il[i];

									i++;

									code.push_back(0x58); // pop rax

									switch (constant_type)
									{
										case Int8: // all of these fall into the int32 case, since it has the shortest instr length
										case UInt8:
										case Int16:
										case UInt16:
										case Int32:
										case UInt32:
											code.insert(code.end(), { 0x29, 0x04, 0x24 }); // sub [rsp], eax

											break;
										case Int64:
										case UInt64:
											code.insert(code.end(), { 0x48, 0x29, 0x04, 0x24 }); // sub [rsp], rax

											break;																													
										default:
											return { "Invalid numerical type identifier", CompilationError::ErrorCode::InvalidTypeIdentifer, &il[i]};
									}
								}

								break;
							case Mul: // needs fix
								num_eval_stack_elems-=1; // net change

								i++;
								
								{
									NumericalTypeIdentifier constant_type = (NumericalTypeIdentifier) il[i];

									i++;

									switch (constant_type)
									{
										case Int8: // all of these fall into the int32 case, since it has the shortest instr length
										case UInt8:
										case Int16:
										case UInt16:
										case Int32:
										case UInt32:
											code.insert(code.end(), { 0x29, 0x04, 0x24 }); // sub [rsp], eax

											break;
										case Int64:
										case UInt64:
											code.insert(code.end(), { 0x48, 0x29, 0x04, 0x24 }); // sub [rsp], rax

											break;																													
										default:
											return { "Invalid numerical type identifier", CompilationError::ErrorCode::InvalidTypeIdentifer, &il[i]};
									}

									code.push_back(0x58); // pop rax
									code.push_back(0x5D); // pop rbp
									code.insert(code.end(), { 0x48, 0xF7, 0xE5 }); // mul rbp
									code.push_back(0x50); // push rax
									break;
								}

							/* go in order */
							case CstNC:
								num_eval_stack_elems+=0; // net change

								i++;
								
								{

									NumericalTypeIdentifier from_type = (NumericalTypeIdentifier) il[i];

									i++;

									NumericalTypeIdentifier to_type = (NumericalTypeIdentifier) il[i];

									i++;

									switch (from_type)
									{
										case Int8:
											switch (to_type)
											{
												case UInt8: break;
												case UInt16: break;
												case UInt32: break;
												case UInt64: break;

												case Int16:
													/*
														pop rax
														movsx ax, al
														movzx rax, ax
														push rax
													*/

													code.insert(code.end(), { 0x58, 0x66, 0x0F, 0xBE, 0xC0, 0x48, 0x0F, 0xB7, 0xC0, 0x50 });

													break;
												case Int32:
													/*
														pop rax
														movsx eax, al
														push rax
													*/

													code.insert(code.end(), { 0x58, 0x0F, 0xBE, 0xC0, 0x50 });
													break;

												case Int64:
													/*
														pop rax
														movsx rax, al
														push rax
													*/

													code.insert(code.end(), { 0x58, 0x48, 0x0F, 0xBE, 0xC0, 0x50 });
													break;
												default:
													return { "Invalid to_type for cstnc", CompilationError::ErrorCode::InvalidTypeIdentifer, &il[i]};
											}

											break;
										case UInt8: break; // no operation needed since the rest of the uint8 bits on the stack are zeroed anyways
										case Int16:
											switch (to_type)
											{
												case UInt16: break;
												case UInt32: break;
												case UInt64: break;

												case UInt8:
												case Int8:
													/*
														pop rax
														movzx rax, al
														push rax
													*/

													code.insert(code.end(), { 0x58, 0x48, 0x0F, 0xB6, 0xC0, 0x50 });

												case Int32:
													/*
														pop rax
														movsx eax, ax
														push rax
													*/

													code.insert(code.end(), { 0x58, 0x0F, 0xBF, 0xC0, 0x50 });
													break;

												case Int64:
													/*
														pop rax
														movsx rax, ax
														push rax
													*/

													code.insert(code.end(), { 0x58, 0x48, 0x0F, 0xBF, 0xC0, 0x50 });
													break;
												default:
													return { "Invalid to_type for cstnc", CompilationError::ErrorCode::InvalidTypeIdentifer, &il[i]};
											}

											break;

										case UInt16:
											switch (to_type)
											{
												case Int16: break; 
												case UInt32: break;
												case UInt64: break;
												case Int32: break;
												case Int64: break;

												case UInt8:
												case Int8:
													/*
														pop rax
														movzx rax, al
														push rax
													*/

													code.insert(code.end(), { 0x58, 0x48, 0x0F, 0xB6, 0xC0, 0x50 });
												default:
													return { "Invalid to_type for cstnc", CompilationError::ErrorCode::InvalidTypeIdentifer, &il[i]};											
											}
											
											break;
										case Int32:
											switch (to_type)
											{
												case UInt32: break;
												case UInt64: break;

												case UInt8:
												case Int8:
													/*
														pop rax
														movzx rax, al
														push rax
													*/

													code.insert(code.end(), { 0x58, 0x48, 0x0F, 0xB6, 0xC0, 0x50 });

												case UInt16:
												case Int16:
													/*
														pop rax
														movzx rax, ax
														push rax
													*/

													code.insert(code.end(), { 0x58, 0x48, 0x0F, 0xB7, 0xC0, 0x50 });
													break;
												
												case Int64:
													/*
														pop rax
														movsx rax, eax
														push rax
													*/

													code.insert(code.end(), { 0x58, 0x48, 0x63, 0xC0, 0x50 });
													break;
												default:
													return { "Invalid to_type for cstnc", CompilationError::ErrorCode::InvalidTypeIdentifer, &il[i]};											
											}

											break;
										case UInt32:
											switch (to_type)
											{
												case Int32: break;
												case UInt64: break;
												case Int64: break;

												case UInt8:
												case Int8:
													/*
														pop rax
														movzx rax, al
														push rax
													*/

													code.insert(code.end(), { 0x58, 0x48, 0x0F, 0xB6, 0xC0, 0x50 });

												case UInt16:
												case Int16:
													/*
														pop rax
														movzx rax, ax
														push rax
													*/

													code.insert(code.end(), { 0x58, 0x48, 0x0F, 0xB7, 0xC0, 0x50 });
													break;
												default:
													return { "Invalid to_type for cstnc", CompilationError::ErrorCode::InvalidTypeIdentifer, &il[i]};											
											}

											break;
										case UInt64: // these two cases (Int64 & UInt64 can be combined because they can only be casted down for a size change)
										case Int64:
											switch (to_type)
											{
												case UInt64: break;
												case Int64: break;

												case UInt8:
												case Int8:
													/*
														pop rax
														movzx rax, al
														push rax
													*/

													code.insert(code.end(), { 0x58, 0x48, 0x0F, 0xB6, 0xC0, 0x50 });

												case UInt16:
												case Int16:
													/*
														pop rax
														movzx rax, ax
														push rax
													*/

													code.insert(code.end(), { 0x58, 0x48, 0x0F, 0xB7, 0xC0, 0x50 });
													break;

												case UInt32:
												case Int32:
													/*
														pop rax
														mov eax, eax // use this to zero out the upper 32 bits of rax
														push rax													
													*/

													code.insert(code.end(), { 0x58, 0x89, 0xC0, 0x50 });
													break;
												default:
													return { "Invalid to_type for cstnc", CompilationError::ErrorCode::InvalidTypeIdentifer, &il[i]};											
											}

											break;
										default:
											return { "Invalid to_type for cstnc", CompilationError::ErrorCode::InvalidTypeIdentifer, &il[i]};

									}
								}

							/* go in order */
							case LdStr:
								num_eval_stack_elems+=1; // net change

								i++;
								
								{
									std::string_view str = LookupString(&il[i], string_ref);

									i+=4; // from string lookup

									// TODO: ensure GC does not activate
									char* ulrstr = special_string_MAKE_FROM_LITERAL(str.data(), str.length());

									// mov rax, ulrstr
									code.insert(code.end(), { 0x48, 0xB8 });
									code.insert(code.end(), (byte*) &ulrstr, ((byte*) &ulrstr)+sizeof(char*));
									
									code.push_back(0x50); // push rax
								}
								break;
							case LdNC:
								num_eval_stack_elems+=1; // net change

								i++;

								{
									NumericalTypeIdentifier constant_type = (NumericalTypeIdentifier) il[i];

									i++;

									switch (constant_type)
									{
										case Int8: // falls into below case
										case UInt8:
											{
												char num = il[i];

												i++;

												/*
													push num
												*/

												code.push_back(0x6A);
												code.push_back(num);
											}

											break;
										case Int16: // falls into next case
										case UInt16:
											{
												uint32_t num = *(uint16_t*) il; // we store it as a uint32 because the push instr doesn't take 16-bit only vals; this is probably faster than zero-extending ax and then pushing it anyway

												i+=2;

												/*
													push num
												*/
												code.push_back(0x68);
												code.insert(code.end(), (byte*) &num, ((byte*) &num)+sizeof(uint32_t));
											}
											
											break;
										case Int32: // falls into next case
										case UInt32:
											{
												uint32_t num = *(uint32_t*) il;
												
												i+=4;

												/*
													push num
												*/
												code.push_back(0x68);
												code.insert(code.end(), (byte*) &num, ((byte*) &num)+sizeof(uint32_t));
											}

											break;
										case Int64:
										case UInt64:
											{
												uint64_t num = *(uint64_t*) il;
												
												i+=8;

												/*
													mov rax, num
												*/

												code.insert(code.end(), { 0x48, 0xB8 });
												code.insert(code.end(), (byte*) &num, ((byte*) &num)+sizeof(uint32_t));
											}
											

											code.push_back(0x50); // push rax

											break;																																																
										default:
											return { "Invalid numerical type identifier", CompilationError::ErrorCode::InvalidTypeIdentifer, &il[i]};
									}
								}

								break;
							case LdFld:
								num_eval_stack_elems+=1; // net change

								i++;
								
								{
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

										uint32_t offset = (uint32_t) ((intptr_t) field->offset);

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
													code.insert(code.end(), (byte*) &offset, ((byte*) &offset)+sizeof(uint32_t));
													break;
												case 2:
													/*
														pop rax
														movzx rax, word [rax+field_offset]
													*/
													code.insert(code.end(), { 0x48, 0x0F, 0xB7, 0x80 });
													code.insert(code.end(), (byte*) &offset, ((byte*) &offset)+sizeof(uint32_t));
													break;
												case 4:
													/*
														pop rax
														mov eax, [rax+field_offset]
													*/
													code.insert(code.end(), { 0x8B, 0x80 });
													code.insert(code.end(), (byte*) &offset, ((byte*) &offset)+sizeof(uint32_t));
													break;
												default:
													/*
														pop rax
														lea rax, [rax+field_offset]
													*/
													code.insert(code.end(), { 0x58, 0x48, 0x8D, 0x80 });
													code.insert(code.end(), (byte*) &offset, ((byte*) &offset)+sizeof(uint32_t));

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
											code.insert(code.end(), (byte*) &offset, ((byte*) &offset)+sizeof(uint32_t));
										}
									}

									code.push_back(0x50); // push rax (push loaded field to the eval stack)
								}

								break;
							case LdLoc:
								num_eval_stack_elems+=1; // net change

								i++;

								{

									byte loc_num = il[i];

									i++;

									Helpers::LocalInfo local = locals[loc_num];

									if (local.size <= 8)
									{
										/*
											push [rbp+offset]
										*/
										code.insert(code.end(), { 0xFF, 0x35 });
										code.insert(code.end(), (byte*) &local.offset, ((byte*) &local.offset)+sizeof(uint32_t));
									}
									else
									{
										/*
											lea rax, [rbp+offset]
											push rax
										*/
										code.insert(code.end(), { 0x48, 0x8D, 0x85 });
										code.insert(code.end(), (byte*) &local.offset, ((byte*) &local.offset)+sizeof(uint32_t));
										code.push_back(0x50);
									}
								}
								break;
							case LdAPL:
								num_eval_stack_elems+=1; // net change
								
								i++;

								{
									byte apl_num = il[i];

									i++;

									Helpers::LocalInfo apl = argpassedlocals[apl_num];

									/*
										push [rbp+offset]

										even in the apl is a large struct, the address to memory allocated by the caller would have been passed in args so this will load the address properly
									*/
									code.insert(code.end(), { 0xFF, 0xB5 });
									code.insert(code.end(), (byte*) &apl.offset, ((byte*) &apl.offset)+sizeof(uint32_t));
								}

								break;
							case Call:
								{
									unsigned int space_needed;


								}
								break;
							case StLoc:
								num_eval_stack_elems-=1; // net change

								i++;

								{
									byte loc_num = il[i];

									i++;

									Helpers::LocalInfo local = locals[loc_num];

									if (local.size <= 8)
									{
										/*
											pop [rbp+offset]
										*/

										code.insert(code.end(), { 0x8F, 0x85 });
										code.insert(code.end(), (byte*) &local.offset, ((byte*) &local.offset)+sizeof(uint32_t));
									}
									else
									{
										code.push_back(0x58); // pop rax

										/*
											addr of "rvalue" is now in rax; rax+local.size constitutes the pointer to the first byte after the object
										*/

										for (unsigned int stoffset = 0; stoffset < local.size; stoffset+=8)
										{
											unsigned int store_rbp_offset = stoffset+local.offset;

											/*
												mov rcx, [rax+stoffset]
												mov [rbp+store_rbp_offset], rcx
											*/

											code.insert(code.end(), { 0x48, 0x8B, 0x88 });
											code.insert(code.end(), (byte*) &stoffset, ((byte*) &stoffset)+sizeof(uint32_t));

											code.insert(code.end(), { 0x48, 0x89, 0x8D });
											code.insert(code.end(), (byte*) &store_rbp_offset, ((byte*) &store_rbp_offset)+sizeof(uint32_t));
										}
									}
								}

								break;
							case StAPL:
								num_eval_stack_elems-=1; // net change

								i++;

								{
									byte apl_num = il[i];

									i++;

									Helpers::LocalInfo apl = argpassedlocals[apl_num];

									if (apl.size <= 8)
									{
										/*
											pop [rbp+offset]
										*/

										code.insert(code.end(), { 0x8F, 0x85 });
										code.insert(code.end(), (byte*) &apl.offset, ((byte*) &apl.offset)+sizeof(uint32_t));
									}
									else
									{
										code.push_back(0x58); // pop rax

										/*
											mov rdx, [rbp+apl.offset]
										*/
										code.insert(code.end(), { 0x48, 0x8B, 0x95 }); 
										code.insert(code.end(), (byte*) &apl.offset, ((byte*) &apl.offset)+sizeof(uint32_t));

										/*
											addr of "rvalue" is now in rax; rax+local.size constitutes the pointer to the first byte after the object
											addr of what to store in is now in rdx
										*/

										for (unsigned int stoffset = 0; stoffset < apl.size; stoffset+=8)
										{
											/*
												mov rcx, [rax+stoffset]
												mov [rdx+stoffset], rcx
											*/

											code.insert(code.end(), { 0x48, 0x8B, 0x88 });
											code.insert(code.end(), (byte*) &stoffset, ((byte*) &stoffset)+sizeof(uint32_t));

											code.insert(code.end(), { 0x48, 0x89, 0x8A });
											code.insert(code.end(), (byte*) &stoffset, ((byte*) &stoffset)+sizeof(uint32_t));
										}
									}
								}
								break;
							case Ret:
								i++;

								// TODO: see below, think about ret, num_eval_stack_elems needs to be based on scope/branches taken

								num_eval_stack_elems-=1; // net change

								code.push_back(0x58); // pop rax (last thing on the evaluation stack gets returned)

								if (copy_to_rbp_offset_for_return)
								{
									unsigned int size_to_copy = rettype->size;

									// rax holds the addr of the thing we want to return
									// [rbp+copy_to_rbp_offset_for_return] is the addr we must write to to actually return the value
									// size_to_copy is the size of the value type

									/*
										mov rcx, [rbp+copy_to_rbp_offset_for_return]
									*/

									code.insert(code.end(), { 0x48, 0x8B, 0x8D });
									code.insert(code.end(), (byte*) &copy_to_rbp_offset_for_return, ((byte*) &copy_to_rbp_offset_for_return)+sizeof(uint32_t));

									// now rcx holds the dest address

									for (unsigned int offset = 0; offset < size_to_copy; offset+=8) // all sizes should be aligned to 8 bytes (the pointer size)
									{
										/*
											mov rdx, [rax+offset]
											mov [rcx+offset], rdx
										*/

										code.insert(code.end(), { 0x48, 0x8B, 0x90 });
										code.insert(code.end(), (byte*) &offset, ((byte*) &offset)+sizeof(uint32_t));

										code.insert(code.end(), { 0x48, 0x89, 0x91 });
										code.insert(code.end(), (byte*) &offset, ((byte*) &offset)+sizeof(uint32_t));
									}
								}

								// epilog
								// add rsp, locals_size
								// pop rbp
								// ret

								{
									unsigned int add_to_rsp = locals_size+(num_eval_stack_elems*8);

									code.insert(code.end(), { 0x48, 0x81, 0xC4 });
									code.insert(code.end(), (byte*) &add_to_rsp, ((byte*) &add_to_rsp)+sizeof(uint32_t));
									code.emplace_back(0x5D); // pop rbp
									code.emplace_back(0xC3); // ret
								}

								break;

							default:
								return { "Unknown opcode", CompilationError::ErrorCode::InvalidInstr, &il[i] };
								break;
						}
					}
					
					// TODO: fix prolog & epilog 

					// the three lines below insert the prolog (in reverse order visually but forward order in reality)
					// push rbp
	     			// mov rbp, rsp
					// sub rsp, locals_size

					code.insert(code.begin(), (byte*) &locals_size, ((byte*) &locals_size)+sizeof(uint32_t));
					code.insert(code.begin(), { 0x55, 0x48, 0x89, 0xE5, 0x48, 0x81, 0xEC });

					// epilog
					// add rsp, locals_size
					// pop rbp
					// ret

					unsigned int add_to_rsp = locals_size+(num_eval_stack_elems*8);

					code.insert(code.end(), { 0x48, 0x81, 0xC4 });
					code.insert(code.end(), (byte*) &add_to_rsp, ((byte*) &add_to_rsp)+sizeof(uint32_t));
					code.emplace_back(0x5D); // pop rbp
					code.emplace_back(0xC3); // ret

					i++;

					void* funcaddr = VirtualAlloc(NULL, code.size(), MEM_COMMIT, PAGE_READWRITE);

					virt_alloced.push_back(funcaddr);

					// TODO: fix when new generic system is impl'd
					
					curr_method->offset = funcaddr;
				
					dynamic_code[curr_method] = code;
				}
				else return { "Expected field or method declaration signal", CompilationError::ErrorCode::MemberExpected, &il[i] };
			}

			// populate vtable using loader logic (maybe in the future instead of holding a copy of this logic it should be placed in a shared lib somewhere)

			internal_api->PopulateVtablePtr(type);

			i++;
		}

		/* THIRD PASS - RESOLVE FUNCTION AND FIELD ADDRS */
		for (const auto& entry : replace_addrs)
		{
			switch (entry.second->decl_type)
			{
				case Method:
					memcpy(entry.first, &((MethodInfo*) entry.second)->offset, sizeof(void*));
					break;
				case Field:
					memcpy(entry.first, &((FieldInfo*) entry.second)->offset, sizeof(void*));
 					break;
				case Ctor:
					memcpy(entry.first, &((ConstructorInfo*) entry.second)->offset, sizeof(void*));
					break;
				default: break;
			}
		}

		/* THIRD PASS - COPY BYTES OVER */
		for (auto& entry : dynamic_code)
		{
			void* offset;
			
			switch (entry.first->decl_type)
			{
				case Method:
					offset = ((MethodInfo*) entry.first)->offset;
					break;
				case Ctor:
					offset = ((ConstructorInfo*) entry.first)->offset;
 					break;
				case Dtor:
					offset = ((DestructorInfo*) entry.first)->offset;
					break;
				default: break;
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