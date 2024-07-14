#include "../Resolver.hpp"

namespace ULR
{
	MethodInfo::MethodInfo(char* name, bool is_static, std::vector<Type*> argsig, Type* rettype, void* offset, int attrs, bool is_generic, char* generic_llir)
	{
		this->decl_type = MemberType::Method;
		this->name = name;
		this->is_static = is_static;
		this->offset = offset;
		this->attrs = attrs;
		this->argsig = argsig;
		this->rettype = rettype;
		this->is_empty_generic = is_generic;
		this->generic_llir = generic_llir;
	}

	MethodInfo::~MethodInfo()
	{
		free(name);
	}

	char* MethodInfo::Invoke(char* self, std::vector<char*> args)
	{
	/* This internal invoke method assumes correct types and length for `args`. 
		The stdlib wrapper implementation should validate `args` and `self` this 
		before calling this ULRAPI method. */	

		#ifdef _WIN64

		std::vector<Type*> lclsig = argsig;

		lclsig.emplace_back(rettype);
		
		if (!is_static)
		{
			lclsig.emplace(lclsig.begin(), parent_type);

			if (IsBoxableStruct(parent_type)) args.emplace(args.begin(), self+sizeof(Type)); // give an illusion of an unboxed 'this' ptr by skipping the type ptr
			else args.emplace(args.begin(), self);
		}

		size_t numargs = args.size();
		
		std::vector<void*> unboxedargs(numargs);

		Type* rettype = lclsig[numargs];

		for (size_t i = 0; i < lclsig.size()-1; i++)
		{
			if (IsBoxableStruct(lclsig[i]))
			{
				if ((IsFriendlyStructSizex64(lclsig[i])) && !(!is_static && i == 0))
				{
					// maybe because of padding endianness won't matter?
					unboxedargs[i] = *((void**) (((Type**) args[i])+1)); // unbox arg and use value
					continue;
				}

				/* unbox arg but still use its addr (this just means remove the vtable pointer to its type in the beginning) */
				unboxedargs[i] = ((Type**) args[i])+1;
				continue;
			}

			unboxedargs[i] = args[i];
		}
		
		if (IsBoxableStruct(rettype))
		{
			if (IsFriendlyStructSizex64(rettype))
			{
				void** argsrawarr = unboxedargs.data();

				void* first_arg;
				void* second_arg;
				void* third_arg;
				void* fourth_arg;

				if (numargs > 0) first_arg = argsrawarr[0];
				if (numargs > 1) second_arg = argsrawarr[1];
				if (numargs > 2) third_arg = argsrawarr[2];
				if (numargs > 3) fourth_arg = argsrawarr[3];

				void* ret;

				size_t stack_alloc_size = 0;
				
				if (numargs > 4)
				{
					stack_alloc_size = (numargs-4)*8;

					asm volatile(
						"sub rsp, %0"
						:
						:"r"(stack_alloc_size)
					);


					for (size_t i = numargs-1; i >= 4; i--)
					{
						void* arg = argsrawarr[i];

						asm volatile(
							"mov [rsp+%1], %0\n\t"
							:
							:"r"(arg), "r"(24+(numargs-i)*8)
						);
					}
				}

				if (numargs > 3)
					asm volatile(
						"mov rcx, %1\n\t"
						"movq xmm0, %1\n\t"
						"mov rdx, %2\n\t"
						"movq xmm1, %2\n\t"
						"mov r8, %3\n\t"
						"movq xmm2, %3\n\t"
						"mov r9, %4\n\t"
						"movq xmm3, %4\n\t"
						"call %5\n\t"
						"add rsp, %6\n\t"
						"mov %0, rax\n\t"
						:"=r"(ret)
						:"r"(first_arg), "r"(second_arg), "r"(third_arg), "r"(fourth_arg), "r"(offset), "r"(stack_alloc_size)
						:"rax", "rcx", "rdx", "r8", "r9", "r10", "r11", "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5"
					);
				else if (numargs > 2)
					asm volatile(
						"mov rcx, %1\n\t"
						"movq xmm0, %1\n\t"
						"mov rdx, %2\n\t"
						"movq xmm1, %2\n\t"
						"mov r8, %3\n\t"
						"movq xmm2, %3\n\t"
						"call %4\n\t"
						"add rsp, %5\n\t"
						"mov %0, rax\n\t"
						:"=r"(ret)
						:"r"(first_arg), "r"(second_arg), "r"(third_arg), "r"(offset), "r"(stack_alloc_size)
						:"rax", "rcx", "rdx", "r8", "r9", "r10", "r11", "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5"
					);
				else if (numargs > 1)
					asm volatile(
						"mov rcx, %1\n\t"
						"movq xmm0, %1\n\t"
						"mov rdx, %2\n\t"
						"movq xmm1, %2\n\t"
						"call %3\n\t"
						"add rsp, %4\n\t"
						"mov %0, rax\n\t"
						:"=r"(ret)
						:"r"(first_arg), "r"(second_arg), "r"(offset), "r"(stack_alloc_size)
						:"rax", "rcx", "rdx", "r8", "r9", "r10", "r11", "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5"
					);
				else if (numargs > 0)
					asm volatile(
						"mov rcx, %1\n\t"
						"movq xmm0, %1\n\t"
						"call %2\n\t"
						"add rsp, %3\n\t"
						"mov %0, rax\n\t"
						:"=r"(ret)
						:"r"(first_arg), "r"(offset), "r"(stack_alloc_size)
						:"rax", "rcx", "rdx", "r8", "r9", "r10", "r11", "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5"
					);
				else
					asm volatile(
						"call %1\n\t"
						"add rsp, %2\n\t"
						"mov %0, rax\n\t"
						:"=r"(ret)
						:"r"(offset), "r"(stack_alloc_size)
						:"rax", "rcx", "rdx", "r8", "r9", "r10", "r11", "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5"
					);

				Type** boxedret = (Type**) internal_api->AllocateObject(sizeof(Type*)+rettype->size);

				boxedret[0] = rettype;
				
				memcpy(boxedret+1, &ret, rettype->size); // this should copy the lower x bytes where the value is stored

				return (char*) boxedret;
			}


			Type** boxedret = (Type**) internal_api->AllocateObject(sizeof(Type*)+rettype->size);

			boxedret[0] = rettype;

			unboxedargs.emplace(unboxedargs.begin(), boxedret+1); // boxedret+1 to skip type ptr place
			numargs = unboxedargs.size();

			void** argsrawarr = unboxedargs.data();

			void* first_arg;
			void* second_arg;
			void* third_arg;
			void* fourth_arg;

			if (numargs > 0) first_arg = argsrawarr[0];
			if (numargs > 1) second_arg = argsrawarr[1];
			if (numargs > 2) third_arg = argsrawarr[2];
			if (numargs > 3) fourth_arg = argsrawarr[3];

			if (numargs > 4)
			{
				for (size_t i = numargs-1; i >= 4; i--)
				{
					void* arg = argsrawarr[i];

					asm volatile(
						"mov [rsp+%1], %0\n\t"
						:
						:"r"(arg), "r"(24+(numargs-i)*8)
					);
				}
			}

			if (numargs > 3)
				asm volatile(
					"mov rcx, %0\n\t"
					"movq xmm0, %0\n\t"
					"mov rdx, %1\n\t"
					"movq xmm1, %1\n\t"
					"mov r8, %2\n\t"
					"movq xmm2, %2\n\t"
					"mov r9, %3\n\t"
					"movq xmm3, %3\n\t"
					"call %4\n\t"
					:
					:"r"(first_arg), "r"(second_arg), "r"(third_arg), "r"(fourth_arg), "r"(offset)
					:"rax", "rcx", "rdx", "r8", "r9", "r10", "r11", "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5"
				);
			else if (numargs > 2)
				asm volatile(
					"mov rcx, %0\n\t"
					"movq xmm0, %0\n\t"
					"mov rdx, %1\n\t"
					"movq xmm1, %1\n\t"
					"mov r8, %2\n\t"
					"movq xmm2, %2\n\t"
					"call %3\n\t"
					:
					:"r"(first_arg), "r"(second_arg), "r"(third_arg), "r"(offset)
					:"rax", "rcx", "rdx", "r8", "r9", "r10", "r11", "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5"
				);
			else if (numargs > 1)
				asm volatile(
					"mov rcx, %0\n\t"
					"movq xmm0, %0\n\t"
					"mov rdx, %1\n\t"
					"movq xmm1, %1\n\t"
					"call %2\n\t"
					:
					:"r"(first_arg), "r"(second_arg), "r"(offset)
					:"rax", "rcx", "rdx", "r8", "r9", "r10", "r11", "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5"
				);
			else if (numargs > 0)
				asm volatile(
					"mov rcx, %0\n\t"
					"movq xmm0, %0\n\t"
					"call %1\n\t"
					:
					:"r"(first_arg), "r"(offset)
					:"rax", "rcx", "rdx", "r8", "r9", "r10", "r11", "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5"
				);
			
			return (char*) boxedret;
		}
		else
		{
			void** argsrawarr = unboxedargs.data();

			void* ret;
			void* first_arg;
			void* second_arg;
			void* third_arg;
			void* fourth_arg;

			if (numargs > 0) first_arg = argsrawarr[0];
			if (numargs > 1) second_arg = argsrawarr[1];
			if (numargs > 2) third_arg = argsrawarr[2];
			if (numargs > 3) fourth_arg = argsrawarr[3];

			if (numargs > 4)
			{
				for (size_t i = numargs-1; i >= 4; i--)
				{
					void* arg = argsrawarr[i];

					asm volatile(
						"mov [rsp+%1], %0\n\t"
						:
						:"r"(arg), "r"(24+(numargs-i)*8)
					);
				}
			}

			if (numargs > 3)
				asm volatile(
					"mov rcx, %1\n\t"
					"movq xmm0, %1\n\t"
					"mov rdx, %2\n\t"
					"movq xmm1, %2\n\t"
					"mov r8, %3\n\t"
					"movq xmm2, %3\n\t"
					"mov r9, %4\n\t"
					"movq xmm3, %4\n\t"
					"call %5\n\t"
					"mov %0, rax\n\t"
					:"=r"(ret)
					:"r"(first_arg), "r"(second_arg), "r"(third_arg), "r"(fourth_arg), "r"(offset)
					:"rax", "rcx", "rdx", "r8", "r9", "r10", "r11", "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5"
				);
			else if (numargs > 2)
				asm volatile(
					"mov rcx, %1\n\t"
					"movq xmm0, %1\n\t"
					"mov rdx, %2\n\t"
					"movq xmm1, %2\n\t"
					"mov r8, %3\n\t"
					"movq xmm2, %3\n\t"
					"call %4\n\t"
					"mov %0, rax\n\t"
					:"=r"(ret)
					:"r"(first_arg), "r"(second_arg), "r"(third_arg), "r"(offset)
					:"rax", "rcx", "rdx", "r8", "r9", "r10", "r11", "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5"
				);
			else if (numargs > 1)
				asm volatile(
					"mov rcx, %1\n\t"
					"movq xmm0, %1\n\t"
					"mov rdx, %2\n\t"
					"movq xmm1, %2\n\t"
					"call %3\n\t"
					"mov %0, rax\n\t"
					:"=r"(ret)
					:"r"(first_arg), "r"(second_arg), "r"(offset)
					:"rax", "rcx", "rdx", "r8", "r9", "r10", "r11", "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5"
				);
			else if (numargs > 0)
				asm volatile(
					"mov rcx, %1\n\t"
					"movq xmm0, %1\n\t"
					"call %2\n\t"
					"mov %0, rax\n\t"
					:"=r"(ret)
					:"r"(first_arg), "r"(offset)
					:"rax", "rcx", "rdx", "r8", "r9", "r10", "r11", "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5"
				);
			else
				asm volatile(
					"call %1\n\t"
					"mov %0, rax\n\t"
					:"=r"(ret)
					:"r"(offset)
					:"rax", "rcx", "rdx", "r8", "r9", "r10", "r11", "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5"
				);

			return (char*) ret;
		}

		#else
		
		#error "no MethodInfo::Invoke implementation for non win64 archs"
		
		#endif

	}
}