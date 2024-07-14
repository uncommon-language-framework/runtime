#include "../UIL.hpp"

namespace ULR::IL
{
	// Section locals do not exist in IL, all locals must be created at the parent local scope. For this reason, we pass locals as a ref and not by value
	// sections will have a net change of 0 elements to the evalutation stack
	// sections should not pop anything off of the evaluation stack that they did not push on to it (either directly or indirectly)
	CompilationError JITContext::CompileSection(
		unsigned int& locals_size,
		unsigned int copy_to_rbp_offset_for_return,
		Type* rettype,
		std::map<byte*, MemberInfo*>& replace_addrs,
		Helpers::LocalLookupTable& locals,
		Helpers::LocalLookupTable& apls,
		std::vector<byte>& code, size_t& i,
		byte il[],
		byte string_ref[]
	)
	{
		unsigned int num_eval_stack_elems;

		while ((il[i] != EndMethod) && (il[i] != BeginSection))
		{
			byte opcode = il[i];

			switch (opcode)
			{
				case LocalDecl:
					return { "Cannot declare locals inside of a section! Locals must be declared before all sections in method.", CompilationError::ErrorCode::InvalidDirective, &il[i] };
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
				case Sub:
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

						code.push_back(0x58); // pop rax

						switch (constant_type)
						{
							case Int8: // all of these fall into the int32 case, since it has the shortest instr length
							case UInt8:
							case Int16:
							case UInt16:
							case Int32:
							case UInt32:
								/*
									imul eax, [rsp]
									mov [rsp], rax
								*/
								code.insert(code.end(), { 0x0F, 0xAF, 0x04, 0x24, 0x48, 0x89, 0x04, 0x24 });

								break;
							case Int64:
							case UInt64:
								/*
									imul rax, rax
									mov [rsp], rax
								*/
								code.insert(code.end(), { 0x48, 0x0F, 0xAF, 0xC0, 0x48, 0x89, 0x04, 0x24 });

								break;																													
							default:
								return { "Invalid numerical type identifier", CompilationError::ErrorCode::InvalidTypeIdentifer, &il[i]};
						}
						
						break;
					}
				case Div: // needs fix
					num_eval_stack_elems-=1; // net change

					i++;

					{
						NumericalTypeIdentifier constant_type = (NumericalTypeIdentifier) il[i];

						i++;

						code.push_back(0x59); // pop rcx [divisor]
						code.push_back(0x58); // pop rax [dividend]
						code.insert(code.end(), { 0x48, 0x31, 0xD2 }); // xor rdx, rdx

						switch (constant_type) // TODO: see if division can be done with 16 bit registers
						{
							case Int8:
								/*
									movsx eax, al
									movsx ecx, cl
									cdq
									idiv ecx,
									movzx ax, al
									push ax
							
								*/
								code.insert(code.end(), { 0x0F, 0xBE, 0xC0, 0x0F, 0xBE, 0xC9, 0x99, 0xF7, 0xF9, 0x66, 0x0F, 0xB6, 0xC0, 0x66, 0x50 });
								break;
							case UInt8:
								/*
									xor edx, edx
									div ecx,
									movzx ax, al
									push ax
								*/

								code.insert(code.end(), { 0x31, 0xD2, 0xF7, 0xF1, 0x66, 0x0F, 0xB6, 0xC0, 0x66, 0x50 });
								break;
							case Int16:
								/*
									movsx eax, ax
									movsx ecx, cx
									cdq
									idiv ecx
									push ax

								*/

								code.insert(code.end(), { 0x0F, 0xBF, 0xC0, 0x0F, 0xBF, 0xC9, 0x99, 0xF7, 0xF9, 0x50, 0x66, 0x50 });

								break;
							case UInt16:
								/*
									xor edx, edx
									div ecx
									push ax
								*/

								code.insert(code.end(), { 0x31, 0xD2, 0xF7, 0xF1, 0x66, 0x50 });

								break;

							case Int32:
								/*
									cdq
									idiv ecx
									push rax
								*/

								code.insert(code.end(), { 0x99, 0xF7, 0xF9, 0x50 });
								break;
							case Int64:
								/*
									cqo
									idiv rcx
									push rax
								*/

								code.insert(code.end(), { 0x48, 0x99, 0x48, 0xF7, 0xF9, 0x50 });
								
								break;

							case UInt32:
								/*
									xor edx, edx
									div ecx
									push rax
								*/

								code.insert(code.end(), { 0x31, 0xD2, 0xF7, 0xF1, 0x50 });
							case UInt64:
								/*
									xor rdx, rdx
									div rcx
									push rax
								*/

								code.insert(code.end(), { 0x48, 0x31, 0xD2, 0x48, 0xF7, 0xF1, 0x50 });

								break;																													
							default:
								return { "Invalid numerical type identifier", CompilationError::ErrorCode::InvalidTypeIdentifer, &il[i]};
						}
						
						break;
					}

				/* go in order */
				case CstNV:
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
						char* ulrstr = CreateULRString(str.data(), str.length());

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
									uint32_t num = *(uint16_t*) &il[i]; // we store it as a uint32 because the push instr doesn't take 16-bit only vals; this is probably faster than zero-extending ax and then pushing it anyway

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
									uint32_t num = *(uint32_t*) &il[i];
									
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
									uint64_t num = *(uint64_t*) &il[i];
									
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
							std::string_view type_name = LookupString(&il[i], string_ref);

							i+=4; // from string ref

							std::string_view field_name = LookupString(&il[i], string_ref);

							i+=4; // from string ref

							FieldInfo* field = (FieldInfo*) api->GetType(type_name)->static_attrs[field_name][0];

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
							std::string_view type_name = LookupString(&il[i], string_ref);

							i+=4; // from string ref

							std::string_view field_name = LookupString(&il[i], string_ref);

							i+=4; // from string ref

							FieldInfo* field = (FieldInfo*) api->GetType(type_name)->static_attrs[field_name][0];

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

						Helpers::LocalInfo apl = apls[apl_num];

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
						bool instance = (il[i] == Flags::Instance);

						i++; // skip instance/static flag

						Type* type = api->GetType(LookupString(&il[i], string_ref));

						i+=4; // skip four bytes of string lookup

						std::string_view method_name = LookupString(&il[i], string_ref);

						i+=4; // skip four bytes of string lookup

						std::vector<Type*> argsig;

						while (il[i] == OpCodes::NewArg)
						{
							i++;

							Type* argtype = api->GetType(LookupString(&il[i], string_ref));

							argsig.push_back(argtype);

							i+=4; // skip four bytes of string lookup
						}

						MethodInfo* method = api->GetMethod(type, method_name, argsig, instance ? Resolver::BindingFlags::Instance : Resolver::BindingFlags::Static);

						unsigned int space_needed = 0;

						code.insert(code.end(), { 0x48, 0x89, 0xE3 }); // mov rbx, rsp (keep using rsp to push/pop args from eval stack, use rbx as lower stack space to store arg copies)

						if (instance) argsig.insert(argsig.begin(), type);

						unsigned int allocate_for_return = 0;
						unsigned int retval_allocated_rbp_offset = 0;

						// we will need to allocate from prolog/epilog since this memory needs to last
						if (NeedsCallAllocatedSpace(method->rettype))
						{
							allocate_for_return = method->rettype->size;

							// TODO: pass alloc'd as first arg & set retval_allocated_rbp_offset

							retval_allocated_rbp_offset = locals_size;

							locals_size+=allocate_for_return;

							argsig.insert(argsig.begin(), nullptr);
						}

						// TODO: alloc space_needed & somehow prefix the whole operation (maybe use a sub-vector for passing args, then concat)


						// do first four args (register-passed)

						if (argsig.size() == 0) goto callfunction;

						if (allocate_for_return) // if we need to allocate for return val, then the pointer to the allocated space must be passed as the first argument
						{
							/*
								lea rcx, [rbp+retval_allocated_rbp_offset]
							*/

							code.insert(code.end(), { 0x48, 0x8D, 0x8D});
							code.insert(code.end(), (byte*) &retval_allocated_rbp_offset, ((byte*) &retval_allocated_rbp_offset)+sizeof(uint32_t));
						}
						else if (NeedsCallAllocatedSpace(argsig[0]))
						{
							unsigned int copy_size = argsig[0]->size;

							code.push_back(0x58); // pop rax

							// copy [rax]-[rax+copy_size] to [rbx+space_needed]-[rbx+space_needed+copy_size]

							for (unsigned int offset = 0; offset < copy_size; offset+=8) // all sizes should be aligned to 8 bytes (the pointer size)
							{
								/*
									mov rdx, [rax+offset]
									mov [rbx+offset], rdx
								*/

								code.insert(code.end(), { 0x48, 0x8B, 0x90 });
								code.insert(code.end(), (byte*) &offset, ((byte*) &offset)+sizeof(uint32_t));

								code.insert(code.end(), { 0x48, 0x89, 0x93 });
								code.insert(code.end(), (byte*) &offset, ((byte*) &offset)+sizeof(uint32_t));
							}

							// move rbx+space_needed into rcx to pass addr to alloc'd space

							code.insert(code.end(), { 0x48, 0x8D, 0x8B });
							code.insert(code.end(), (byte*) &space_needed, ((byte*) &space_needed)+sizeof(uint32_t));


							space_needed+=copy_size;
						}
						else code.push_back(0x59); // pop rcx


						if (argsig.size() == 1) goto callfunction;

						if (NeedsCallAllocatedSpace(argsig[1]))
						{
							unsigned int copy_size = argsig[1]->size;

							code.push_back(0x58); // pop rax

							// copy [rax]-[rax+copy_size] to [rbx+space_needed]-[rbx+space_needed+copy_size]

							for (unsigned int offset = 0; offset < copy_size; offset+=8) // all sizes should be aligned to 8 bytes (the pointer size)
							{
								/*
									mov rdx, [rax+offset]
									mov [rbx+offset], rdx
								*/

								code.insert(code.end(), { 0x48, 0x8B, 0x90 });
								code.insert(code.end(), (byte*) &offset, ((byte*) &offset)+sizeof(uint32_t));

								code.insert(code.end(), { 0x48, 0x89, 0x93 });
								code.insert(code.end(), (byte*) &offset, ((byte*) &offset)+sizeof(uint32_t));
							}

							// move rbx+space_needed into rdx to pass addr to alloc'd space

							code.insert(code.end(), { 0x48, 0x8D, 0x93 });
							code.insert(code.end(), (byte*) &space_needed, ((byte*) &space_needed)+sizeof(uint32_t));


							space_needed+=copy_size;
						}
						else code.push_back(0x5A); // pop rdx


						if (argsig.size() == 2) goto callfunction;

						if (NeedsCallAllocatedSpace(argsig[2]))
						{
							unsigned int copy_size = argsig[2]->size;

							code.push_back(0x58); // pop rax

							// copy [rax]-[rax+copy_size] to [rbx+space_needed]-[rbx+space_needed+copy_size]

							for (unsigned int offset = 0; offset < copy_size; offset+=8) // all sizes should be aligned to 8 bytes (the pointer size)
							{
								/*
									mov rdx, [rax+offset]
									mov [rbx+offset], rdx
								*/

								code.insert(code.end(), { 0x48, 0x8B, 0x90 });
								code.insert(code.end(), (byte*) &offset, ((byte*) &offset)+sizeof(uint32_t));

								code.insert(code.end(), { 0x48, 0x89, 0x93 });
								code.insert(code.end(), (byte*) &offset, ((byte*) &offset)+sizeof(uint32_t));
							}

							// move rbx+space_needed into r8 to pass addr to alloc'd space

							code.insert(code.end(), { 0x4C, 0x8D, 0x83 });
							code.insert(code.end(), (byte*) &space_needed, ((byte*) &space_needed)+sizeof(uint32_t));


							space_needed+=copy_size;						}
						else code.insert(code.end(), { 0x41, 0x58 }); // pop r8


						if (argsig.size() == 3) goto callfunction;

						if (NeedsCallAllocatedSpace(argsig[3]))
						{
							unsigned int copy_size = argsig[3]->size;

							code.push_back(0x58); // pop rax

							// copy [rax]-[rax+copy_size] to [rbx+space_needed]-[rbx+space_needed+copy_size]

							for (unsigned int offset = 0; offset < copy_size; offset+=8) // all sizes should be aligned to 8 bytes (the pointer size)
							{
								/*
									mov rdx, [rax+offset]
									mov [rbx+offset], rdx
								*/

								code.insert(code.end(), { 0x48, 0x8B, 0x90 });
								code.insert(code.end(), (byte*) &offset, ((byte*) &offset)+sizeof(uint32_t));

								code.insert(code.end(), { 0x48, 0x89, 0x93 });
								code.insert(code.end(), (byte*) &offset, ((byte*) &offset)+sizeof(uint32_t));
							}

							// move rbx+space_needed into r9 to pass addr to alloc'd space

							code.insert(code.end(), { 0x4C, 0x8D, 0x8B });
							code.insert(code.end(), (byte*) &space_needed, ((byte*) &space_needed)+sizeof(uint32_t));


							space_needed+=copy_size;						}
						else code.insert(code.end(), { 0x41, 0x59 }); // pop r9


						if (argsig.size() == 4) goto callfunction;

						// pass args on stack in reverse order... (technically they alr are in reverse order, maybe just have a separate instr for loading large valuetypes as copies so that you don't need to do any processing here)

						callfunction:
							/*
								sub rsp, space_needed

								^ set rsp to rbx (end of space allocated) so that new function's frame does not interrupt allocated space
								the reason rsp was not set in the first place is so that it did not mess up pushing/popping from eval stack
							*/
							code.insert(code.end(), { 0x48, 0x81, 0xEC });
							code.insert(code.end(), (byte*) &space_needed, ((byte*) &space_needed)+sizeof(uint32_t));
							
							/*
								mov rax, 0x0 [addr will be filled later]
							*/

							code.insert(code.end(), { 0x48, 0xB8 });

							replace_addrs[&code[code.size()]] = method;

							code.insert(code.end(), sizeof(void*), 0);

							code.insert(code.end(), { 0xFF, 0xD0 }); // call rax

							/*
								add rsp, space_needed

								^ set rsp to what it was before, restoring the correct eval stack pointer
							*/
							code.insert(code.end(), { 0x48, 0x81, 0xC4 });
							code.insert(code.end(), (byte*) &space_needed, ((byte*) &space_needed)+sizeof(uint32_t));

							// after the function returns the return value will be in rax (unless the returnvalue is a large value type)
							
							if (allocate_for_return)
							{
								/*
									lea rax, [rbp+retval_allocated_rbp_offset]
								*/
								code.insert(code.end(), { 0x48, 0x8D, 0x85 });
								code.insert(code.end(), (byte*) &retval_allocated_rbp_offset, ((byte*) &retval_allocated_rbp_offset)+sizeof(uint32_t));
							}

							code.push_back(0x50); // push rax (push retval to eval stack)

							break;
					}
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

						Helpers::LocalInfo apl = apls[apl_num];

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
					// add rsp, add_to_rsp	
					// pop rbp
					// pop rbx
					// ret

					{
						unsigned int add_to_rsp = locals_size+(num_eval_stack_elems*8);

						code.insert(code.end(), { 0x48, 0x81, 0xC4 });
						code.insert(code.end(), (byte*) &add_to_rsp, ((byte*) &add_to_rsp)+sizeof(uint32_t));
						code.insert(code.end(), { 0x55, 0x53, 0xC3 }); // pop rbp, pop rbx, ret
					}

					break;

				default:
					return { "Unknown opcode", CompilationError::ErrorCode::InvalidInstr, &il[i] };
					break;
			}
		}

		if (num_eval_stack_elems != 0) // there was a net change in eval stack elems, so add to rsp to clear the eval stack
		{
			unsigned int add_to_rsp = num_eval_stack_elems*8;

			/*
				add rsp, add_to_rsp
			*/

			code.insert(code.end(), { 0x48, 0x81, 0xC4 });
			code.insert(code.end(), (byte*) &add_to_rsp, ((byte*) &add_to_rsp)+sizeof(uint32_t));
		}

		return NoError;
	}

	CompilationError JITContext::CompileGenericSection(
		unsigned int& locals_size,
		unsigned int copy_to_rbp_offset_for_return,
		Type* rettype,
		std::map<byte*, MemberInfo*>& replace_addrs,
		Helpers::LocalLookupTable& locals,
		Helpers::LocalLookupTable& apls,
		std::vector<byte>& code, size_t& i,
		byte il[],
		byte string_ref[],
		Type* (*ResolveGenericLookup)(byte)
	)
	{
		unsigned int num_eval_stack_elems;

		while ((il[i] != EndMethod) && (il[i] != BeginSection))
		{
			byte opcode = il[i];

			switch (opcode)
			{
				case LocalDecl:
					return { "Cannot declare locals inside of a section! Locals must be declared before all sections in method.", CompilationError::ErrorCode::InvalidDirective, &il[i] };
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
				case Sub:
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

						code.push_back(0x58); // pop rax

						switch (constant_type)
						{
							case Int8: // all of these fall into the int32 case, since it has the shortest instr length
							case UInt8:
							case Int16:
							case UInt16:
							case Int32:
							case UInt32:
								/*
									imul eax, [rsp]
									mov [rsp], rax
								*/
								code.insert(code.end(), { 0x0F, 0xAF, 0x04, 0x24, 0x48, 0x89, 0x04, 0x24 });

								break;
							case Int64:
							case UInt64:
								/*
									imul rax, rax
									mov [rsp], rax
								*/
								code.insert(code.end(), { 0x48, 0x0F, 0xAF, 0xC0, 0x48, 0x89, 0x04, 0x24 });

								break;																													
							default:
								return { "Invalid numerical type identifier", CompilationError::ErrorCode::InvalidTypeIdentifer, &il[i]};
						}
						
						break;
					}
				case Div: // needs fix
					num_eval_stack_elems-=1; // net change

					i++;

					{
						NumericalTypeIdentifier constant_type = (NumericalTypeIdentifier) il[i];

						i++;

						code.push_back(0x59); // pop rcx [divisor]
						code.push_back(0x58); // pop rax [dividend]
						code.insert(code.end(), { 0x48, 0x31, 0xD2 }); // xor rdx, rdx

						switch (constant_type) // TODO: see if division can be done with 16 bit registers
						{
							case Int8:
								/*
									movsx eax, al
									movsx ecx, cl
									cdq
									idiv ecx,
									movzx ax, al
									push ax
							
								*/
								code.insert(code.end(), { 0x0F, 0xBE, 0xC0, 0x0F, 0xBE, 0xC9, 0x99, 0xF7, 0xF9, 0x66, 0x0F, 0xB6, 0xC0, 0x66, 0x50 });
								break;
							case UInt8:
								/*
									xor edx, edx
									div ecx,
									movzx ax, al
									push ax
								*/

								code.insert(code.end(), { 0x31, 0xD2, 0xF7, 0xF1, 0x66, 0x0F, 0xB6, 0xC0, 0x66, 0x50 });
								break;
							case Int16:
								/*
									movsx eax, ax
									movsx ecx, cx
									cdq
									idiv ecx
									push ax

								*/

								code.insert(code.end(), { 0x0F, 0xBF, 0xC0, 0x0F, 0xBF, 0xC9, 0x99, 0xF7, 0xF9, 0x50, 0x66, 0x50 });

								break;
							case UInt16:
								/*
									xor edx, edx
									div ecx
									push ax
								*/

								code.insert(code.end(), { 0x31, 0xD2, 0xF7, 0xF1, 0x66, 0x50 });

								break;

							case Int32:
								/*
									cdq
									idiv ecx
									push rax
								*/

								code.insert(code.end(), { 0x99, 0xF7, 0xF9, 0x50 });
								break;
							case Int64:
								/*
									cqo
									idiv rcx
									push rax
								*/

								code.insert(code.end(), { 0x48, 0x99, 0x48, 0xF7, 0xF9, 0x50 });
								
								break;

							case UInt32:
								/*
									xor edx, edx
									div ecx
									push rax
								*/

								code.insert(code.end(), { 0x31, 0xD2, 0xF7, 0xF1, 0x50 });
							case UInt64:
								/*
									xor rdx, rdx
									div rcx
									push rax
								*/

								code.insert(code.end(), { 0x48, 0x31, 0xD2, 0x48, 0xF7, 0xF1, 0x50 });

								break;																													
							default:
								return { "Invalid numerical type identifier", CompilationError::ErrorCode::InvalidTypeIdentifer, &il[i]};
						}
						
						break;
					}

				/* go in order */
				case CstNV:
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
						char* ulrstr = CreateULRString(str.data(), str.length());

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
									uint32_t num = *(uint16_t*) &il[i]; // we store it as a uint32 because the push instr doesn't take 16-bit only vals; this is probably faster than zero-extending ax and then pushing it anyway

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
									uint32_t num = *(uint32_t*) &il[i];
									
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
									uint64_t num = *(uint64_t*) &il[i];
									
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
							std::string_view type_name = LookupString(&il[i], string_ref);

							i+=4; // from string ref

							std::string_view field_name = LookupString(&il[i], string_ref);

							i+=4; // from string ref

							FieldInfo* field = (FieldInfo*) api->GetType(type_name)->static_attrs[field_name][0];

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
							std::string_view type_name = LookupString(&il[i], string_ref);

							i+=4; // from string ref

							std::string_view field_name = LookupString(&il[i], string_ref);

							i+=4; // from string ref

							FieldInfo* field = (FieldInfo*) api->GetType(type_name)->static_attrs[field_name][0];

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

						Helpers::LocalInfo apl = apls[apl_num];

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

						Helpers::LocalInfo apl = apls[apl_num];

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
					// add rsp, add_to_rsp	
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

		if (num_eval_stack_elems != 0) // there was a net change in eval stack elems, so add to rsp to clear the eval stack
		{
			unsigned int add_to_rsp = num_eval_stack_elems*8;

			/*
				add rsp, add_to_rsp
			*/

			code.insert(code.end(), { 0x48, 0x81, 0xC4 });
			code.insert(code.end(), (byte*) &add_to_rsp, ((byte*) &add_to_rsp)+sizeof(uint32_t));
		}

		return NoError;
	}

	CompilationError CompileGenericSection(std::vector<byte> &code, int &i, byte il[], byte string_ref[], Type *(*ResolveGenericLookup)(byte))
	{
		return NoError;
	}
}