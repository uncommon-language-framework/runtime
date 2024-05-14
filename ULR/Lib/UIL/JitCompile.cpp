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

	CompilationError JITContext::StackBaseCompile(Assembly* meta_asm, byte il[], byte string_ref[])
	{
		Helpers::EvalStack eval_stack;

		size_t i = 0;

		while (il[i] != OpCodes::EndAssembly)
		{
			if (il[i] != OpCodes::BeginType)
			{
				return { "Expected type declaration signal", CompilationError::ErrorCode::TypeExpected, &il[i] };
			}

			i++;

			while (il[i] != OpCodes::EndType)
			{
				if (il[i] == OpCodes::FieldDecl)
				{
					/* code */

					i++;
				}
				else if (il[i] == OpCodes::BeginMethod)
				{
					std::vector<Type*> argsig;
					Type* rettype;
					Modifiers modifiers;

					std::vector<byte> code(16);
					Helpers::LocalLookupTable locals;
					size_t locals_size;

					// TODO: get return type and modifiers

					while (il[i] != OpCodes::EndMethod)
					{
						byte opcode = il[i];

						switch (opcode)
						{
							case OpCodes::LocalDecl:
								i++;
								{
									std::string lcl_type_name = std::string(LookupString(&il[i], string_ref));
									Type* lcl_type = api->GetType(lcl_type_name.data());
									i+=4; // skip four bytes for string lookup

							
									if (il[i] == Flags::ArgumentPassed)
									{
										argsig.push_back(lcl_type);

										std::vector<byte> offset;

										switch (argsig.size())
										{
											case 1: // mov [rbp-locals_size], rcx
												locals.push_back(locals_size);

												code.insert(code.end(), { 0x48, 0x89, 0x4D });

												offset = Helpers::convert_to_rbp_offset(-locals_size);
												code.insert(code.end(), offset.begin(), offset.end());
												break;
											case 2: // mov [rbp-locals_size], rdx
												locals.push_back(locals_size);

												code.insert(code.end(), { 0x48, 0x89, 0x55 });

												offset = Helpers::convert_to_rbp_offset(-locals_size);
												code.insert(code.end(), offset.begin(), offset.end());
												break;
											case 3: // mov [rbp-locals_size], r8
												locals.push_back(locals_size);

												code.insert(code.end(), { 0x4C, 0x89, 0x45 });

												offset = Helpers::convert_to_rbp_offset(-locals_size);
												code.insert(code.end(), offset.begin(), offset.end());
												break;												
											case 4: // mov [rbp-locals_size], r9
												locals.push_back(locals_size);

												code.insert(code.end(), { 0x4C, 0x89, 0x4D });

												offset = Helpers::convert_to_rbp_offset(-locals_size);
												code.insert(code.end(), offset.begin(), offset.end());
												break;												
											default:
												locals.push_back((64+(argsig.size()-6)*8)); // todo: find which stack addr args start from (replace 64)
												// for above also see argsig.size() may need to use total args-argsig.size() (reverse take) (grab total args from reading phase?)
												break;
										}



										locals_size+=lcl_type->size;
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
								code.push_back(0x58); // pop rax
								code.insert(code.end(), { 0x48, 0x01, 0x04, 0x24 }); // add [rsp], rax
								break;
							case OpCodes::Sub:
								code.push_back(0x58); // pop rax
								code.insert(code.end(), { 0x48, 0x29, 0x04, 0x24 }); // sub [rsp], rax
								break;
							case OpCodes::Mul:
								code.push_back(0x58); // pop rax
								code.push_back(0x5D); // pop rbp
								code.insert(code.end(), { 0x48, 0xF7, 0xE5 }); // mul rbp
								code.push_back(0x50); // push rax
								break;
							default:
								return { "Unknown opcode", CompilationError::ErrorCode::InvalidInstr, &il[i] };
								break;
						}

						i++;
					}

					code.push_back(0xC3); // ret

					i++;
				}
				else return { "Expected field or method declaration signal", CompilationError::ErrorCode::MemberExpected, &il[i] };
			}

			i++;
		}

		return NoError;
	}

	JITContext::~JITContext()
	{
		for (const auto alloced : allocated)
		{
			#ifdef _WIN64
				VirtualFree(alloced, 0, MEM_RELEASE);
			#else

			#error "No UIL JIT support for non-windows x64 platforms currently"

			#endif
		}
	}
}