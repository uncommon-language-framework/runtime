#include "../UIL.hpp"

namespace ULR::IL
{
	CompilationError JITContext::ReadTypeMeta(Assembly* meta_asm, size_t& i, byte il[], byte string_ref[])
	{
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
				while (il[i] == OpCodes::NewArg)
				{
					i++; // skip newarg signal

					i+=4; // skip what would be a string lookup for typename
				}

				// end method arg lookup

				i+=method_size;

				i++; // skip EndMethod OpCode, TODO: check if this is actually EndMethod and if not, throw err


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

		i++; // skip EndType signal

		return NoError;
	}

	CompilationError JITContext::CompileType(
		Assembly* meta_asm,
		std::map<byte*, MemberInfo*>& replace_addrs,
		std::map<MemberInfo*, std::vector<byte>>& dynamic_code,
		size_t& i, byte il[], byte string_ref[]
	)
	{
		i++; // skip byte of type decl type (e.g. class, struct, record, etc.)

		i+=2; // skip two bytes of what would be attrs/modifiers

		i+=4; // skip four bytes of what would be  size 

		Type* type = meta_asm->types[LookupString(&il[i], string_ref)];

		i+=4; // skip four bytes from name string lookup

		type->immediate_base = api->GetType(LookupString(&il[i], string_ref));

		i+=4; // skip four bytes for string lookup for the type's base

		while (il[i] != EndTypeMeta)
		{
			type->interfaces.push_back(
				api->GetType(LookupString(&il[i], string_ref))
			);

			i+=4; // skip four bytes of string lookup for an implemented interface
		}

		i++; // skip EndTypeMeta signal

		while (il[i] != EndType)
		{
			if (il[i] == FieldDecl)
			{
				i++;

				std::string_view name = LookupString(&il[i], string_ref);


				i+=4; // skip four bytes of stringref

				Modifiers attrs = (Modifiers) *((uint16_t*) &il[i]);

				i+=2;

				Type* valtype = api->GetType(LookupString(&il[i], string_ref));

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

				std::string_view name = LookupString(&il[i], string_ref);
				i+=4; // skip four bytes of string ref
				
				Modifiers attrs = (Modifiers) *((uint16_t*) &il[i]);

				// skip two bytes of modifiers
				i+=2;

				Type* rettype = api->GetType(LookupString(&il[i], string_ref));

				i+=4; // skip four bytes of string lookup for rettype

				i+=4; // skip four bytes of what would be method size

				MethodInfo* curr_method;

				if (attrs & Modifiers::Static)
				{
					curr_method = (MethodInfo*) type->static_attrs[name][overload_number];
				}
				else
				{
					curr_method = (MethodInfo*) type->inst_attrs[name][overload_number];
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
				while (il[i] == OpCodes::NewArg)
				{
					i++; // skip newarg signal

					std::string_view argname = LookupString(&il[i], string_ref);

					i+=4; // skip four for argtype stringref

					Type* argtype = api->GetType(argname);

					size_t arg_store_size = IsBoxableStruct(argtype) ? argtype->size : 8; 

					curr_method->argsig.push_back(argtype);
					
					// we grab args from [rbp+24] to [rbp+48]++ because we save two registers -- retaddr @ [rbp] (because now rbp == old rsp), first reg saved @ [rbp+8], second reg saved @ [rbp+16]
					switch (curr_method->argsig.size())
					{
						case 1: // mov [rbp+24], rcx
							argpassedlocals.push_back({ 24, arg_store_size });

							code.insert(code.end(), { 0x48, 0x89, 0x4D, 0x18 });
							break;
						case 2: // mov [rbp+32], rdx
							argpassedlocals.push_back({ 32, arg_store_size });

							code.insert(code.end(), { 0x48, 0x89, 0x55, 0x20 });
							break;
						case 3: // mov [rbp+40], r8
							argpassedlocals.push_back({ 40, arg_store_size });

							code.insert(code.end(), { 0x4C, 0x89, 0x45, 0x28 });
							break;												
						case 4: // mov [rbp+48], r9
							argpassedlocals.push_back({ 48, arg_store_size });

							code.insert(code.end(), { 0x4C, 0x89, 0x4D, 0x30 });
							break;												
						default:
							argpassedlocals.push_back({ (int) (48+(curr_method->argsig.size()-4)*8), arg_store_size }); // todo: find which stack addr args start from (replace 64)
							// for above also see argsig.size() may need to use total args-argsig.size() (reverse take) (grab total args from reading phase?)
							break;
					}
				}

				// end get method args

				if (copy_to_rbp_offset_for_return)
				{
					// remove the first artificially added arg (see where) `copy_to_rbp_offset_for_return` is set
					curr_method->argsig.erase(curr_method->argsig.begin(), curr_method->argsig.begin()+1); 
				}


				while (il[i] != BeginSection)
				{
					byte opcode = il[i];

					switch (opcode)
					{
						case LocalDecl:
							i++;
							{
								Type* lcl_type = api->GetType(LookupString(&il[i], string_ref));
								size_t lcl_store_size = IsBoxableStruct(lcl_type) ? lcl_type->size : 8; 


								i+=4; // skip four bytes for string lookup

								locals.push_back({ (int) (-locals_size), lcl_store_size });

								locals_size+=lcl_type->size; // todo: check if this offset is correct
							}
						default:
							return { "Only LocalDecl directives are allowed outside of scopes!", CompilationError::ErrorCode::InvalidDirective, &il[i] };
							break;
					}
				}
				
				// Align locals_size to 16 bytes

				locals_size+=(locals_size % 16);

				while (il[i] == BeginSection)
				{
					i++; // skip BeginSection signal

					auto error = CompileSection(
						locals_size,
						copy_to_rbp_offset_for_return,
						rettype,
						replace_addrs,
						locals,
						argpassedlocals,
						code,
						i,
						il,
						string_ref
					);

					if (error) return error;
				}

				if (il[i] != EndMethod) return { "Expected EndMethod signal!", CompilationError::ErrorCode::SignalExpected, &il[i] };

				i++; // skip EndMethod
				
				// the three lines below insert the prolog (in reverse order visually but forward order in reality)
				// push rbx
				// push rbp
				// mov rbp, rsp
				// sub rsp, locals_size

				code.insert(code.begin(), (byte*) &locals_size, ((byte*) &locals_size)+sizeof(uint32_t)); // 4 bytes
				code.insert(code.begin(), { 0x53, 0x55, 0x48, 0x89, 0xE5, 0x48, 0x81, 0xEC }); // 8 bytes

				// ^ twelve byte total epilog
				// IMPORTANT: with any insertion to the beginning, we must offset all indexes in replace_addrs by the same amount of bytes
				// right now there is no good permanent soln, a constant 12 bytes is being used in JITCompile.cpp

				// epilog
				// add rsp, locals_size
				// pop rbp
				// POP rbx
				// ret

				unsigned int add_to_rsp = locals_size+(num_eval_stack_elems*8);

				code.insert(code.end(), { 0x48, 0x81, 0xC4 });
				code.insert(code.end(), (byte*) &add_to_rsp, ((byte*) &add_to_rsp)+sizeof(uint32_t));
				code.insert(code.end(), { 0x5D, 0x5B, 0xC3 }); // pop rbp, pop rbx, ret

				void* funcaddr = VirtualAlloc(NULL, code.size(), MEM_COMMIT, PAGE_READWRITE);

				virt_alloced.push_back(funcaddr);

				// TODO: fix when new generic system is impl'd
				
				curr_method->offset = funcaddr;
			}
			else return { "Expected field or method declaration signal", CompilationError::ErrorCode::SignalExpected, &il[i] };
		}

		internal_api->PopulateVtablePtr(type);

		i++; // skip EndType signal

		return NoError;
	}

	CompilationError JITContext::CompileGenericType(Assembly* meta_asm, size_t& i, byte il[], byte string_ref[], Type* (*ResolveGenericLookup)(byte))
	{
		return NoError;
	}
}