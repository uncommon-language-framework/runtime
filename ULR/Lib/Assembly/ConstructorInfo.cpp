#include "../Assembly.hpp"

namespace ULR
{
	ConstructorInfo::ConstructorInfo(std::vector<Type*> signature, void* offset, int attrs, bool is_generic, char* generic_llir)
	{
		this->decl_type = MemberType::Ctor;
		this->name = ".ctor";
		this->is_static = is_static;
		this->offset = offset;
		this->attrs = attrs;
		this->argsig = signature;
		this->is_empty_generic = is_generic;
		this->generic_llir = generic_llir;
	}

	void ConstructorInfo::Invoke(char* self, std::vector<char*> args)
	{
		/* This internal invoke method assumes correct types and length for `args`. 
			The stdlib wrapper implementation should validate `args` and `self` this 
			before calling this ULRAPI method. */	

		#ifdef _WIN64

		std::vector<Type*> lclsig = argsig;
		
		lclsig.emplace(lclsig.begin(), parent_type);

		if (IsBoxableStruct(parent_type)) args.emplace(args.begin(), self+sizeof(Type)); // give an illusion of an unboxed 'this' ptr by skipping the type ptr
		else args.emplace(args.begin(), self);

		size_t numargs = args.size();
		
		std::vector<void*> unboxedargs(numargs);

		for (size_t i = 0; i < lclsig.size()-1; i++)
		{
			if (IsBoxableStruct(lclsig[i]))
			{
				if ((IsFriendlyStructSizex64(lclsig[i])) && !(!is_static && i == 0))
				{
					// maybe because of padding endianness won't matter?
					unboxedargs[i] = *((void**) ((Type**) args[i])+1); // unbox arg and use value
					continue;
				}

				/* unbox arg but still use its addr (this just means remove the vtable pointer to its type in the beginning) */
				unboxedargs[i] = ((Type**) args[i])+1;
				continue;
			}

			unboxedargs[i] = args[i];
		}
		
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
		else
			asm volatile(
				"call %0\n\t"
				:
				:"r"(offset)
				:"rax", "rcx", "rdx", "r8", "r9", "r10", "r11", "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5"
			);

		#else
		
		#error "no ConstructorInfo::Invoke implementation for non win64 archs"
		
		#endif

	}
}