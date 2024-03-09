#include <iostream>
#include <vector>
#include <functional>

#define TEST_SIZE 12

struct MyValueType
{
	unsigned char bytebuf[TEST_SIZE];
};

struct SmallType
{
	unsigned char bytebuf[3];
};

struct WrappingValueTypeInstance
{
	unsigned char* bytebuf;
};

void func(MyValueType arg, MyValueType arg2)
{
	std::cout << "Enter call---" << std::endl;
	std::cout << *reinterpret_cast<unsigned long long*>(arg.bytebuf) << std::endl;
	std::cout << *reinterpret_cast<unsigned long long*>(arg2.bytebuf) << std::endl;
	std::cout << "Exit call---" << std::endl;
}

void func5(MyValueType arg, MyValueType arg2, MyValueType arg3, MyValueType arg4, MyValueType arg5)
{
	std::cout << "Enter bigfunc---" << std::endl;

	std::cout << *reinterpret_cast<unsigned long long*>(arg.bytebuf) << std::endl;
	std::cout << *reinterpret_cast<unsigned long long*>(arg2.bytebuf) << std::endl;
	std::cout << *reinterpret_cast<unsigned long long*>(arg3.bytebuf) << std::endl;
	std::cout << *reinterpret_cast<unsigned long long*>(arg4.bytebuf) << std::endl;
	std::cout << *reinterpret_cast<unsigned long long*>(arg5.bytebuf) << std::endl;

	std::cout << "Exit bigfunc" << std::endl;
}

void func10(
	MyValueType arg, MyValueType arg2, MyValueType arg3, MyValueType arg4, MyValueType arg5,
	MyValueType arg6, MyValueType arg7, MyValueType arg8, MyValueType arg9, MyValueType arg10)
{
	std::cout << "Enter bigfunc---" << std::endl;

	std::cout << *reinterpret_cast<unsigned long long*>(arg.bytebuf) << std::endl;
	std::cout << *reinterpret_cast<unsigned long long*>(arg2.bytebuf) << std::endl;
	std::cout << *reinterpret_cast<unsigned long long*>(arg3.bytebuf) << std::endl;
	std::cout << *reinterpret_cast<unsigned long long*>(arg4.bytebuf) << std::endl;
	std::cout << *reinterpret_cast<unsigned long long*>(arg5.bytebuf) << std::endl;
	std::cout << *reinterpret_cast<unsigned long long*>(arg6.bytebuf) << std::endl;
	std::cout << *reinterpret_cast<unsigned long long*>(arg7.bytebuf) << std::endl;
	std::cout << *reinterpret_cast<unsigned long long*>(arg8.bytebuf) << std::endl;
	std::cout << *reinterpret_cast<unsigned long long*>(arg9.bytebuf) << std::endl;
	std::cout << *reinterpret_cast<unsigned long long*>(arg10.bytebuf) << std::endl;

	std::cout << "Exit bigfunc" << std::endl;
}

int main()
{
	#ifndef _WIN64
	
	#error linux unsupported rn

	#endif

	MyValueType obj;
	unsigned long long num = 1230981;

	memcpy(obj.bytebuf, &num, TEST_SIZE);

	func(obj, obj);

	void (*reflfunc)(...) = (void (*)(...)) func;

	reflfunc(obj, obj);

	WrappingValueTypeInstance inst;

	inst.bytebuf = new unsigned char[TEST_SIZE];

	memcpy(inst.bytebuf, &num, TEST_SIZE);

	// std::cout << (unsigned long long) inst.bytebuf << std::endl;

	reflfunc(inst, inst);

	unsigned char sendbuf[TEST_SIZE];
	memcpy(sendbuf, &num, TEST_SIZE);

	reflfunc(sendbuf, sendbuf);

	size_t num_args = 10;

	std::vector<WrappingValueTypeInstance> args(num_args);

	for (size_t argi = 0; argi < num_args; argi++)
	{
		args[argi].bytebuf = new unsigned char[TEST_SIZE];

		memcpy(args[argi].bytebuf, &num, TEST_SIZE);
	}

	void* funcret;
	void* func_to_call_with_inline_asm = (void*) func10;

	size_t stackadd = 0;

	WrappingValueTypeInstance* argsarr = args.data();
    
    // for (int testi = num_args; testi >= 4; testi--)
    // {
    //     WrappingValueTypeInstance inst = argsarr[testi];
    // }
	
	WrappingValueTypeInstance first_arg = args[0];
	WrappingValueTypeInstance second_arg = args[1];
	WrappingValueTypeInstance third_arg = args[2];
	WrappingValueTypeInstance fourth_arg = args[3];

	if (num_args > 4)
	{
		for (size_t i = num_args-1; i >= 4; i--)
		{
			WrappingValueTypeInstance arg = argsarr[i];

			asm(
				"mov [rsp+%1], %0\n\t"
				:
				:"r"(arg), "r"(24+(num_args-i)*8)
			);
		}
	}

	if (num_args > 3)
		asm(
			"mov rcx, %1\n\t"
			"mov rdx, %2\n\t"
			"mov r8, %3\n\t"
			"mov r9, %4\n\t"
			"call %5\n\t"
			"mov %0, rax\n\t"
			:"=r"(funcret)
			:"r"(first_arg), "r"(second_arg), "r"(third_arg), "r"(fourth_arg), "r"(func_to_call_with_inline_asm), "r"(stackadd)
			:"rcx", "rdx", "r8", "r9", "rax"
		);
	else if (num_args > 2)
		asm(
			"mov rcx, %1\n\t"
			"mov rdx, %2\n\t"
			"mov r8, %3\n\t"
			"call %4\n\t"
			"mov %0, rax\n\t"
			:"=r"(funcret)
			:"r"(first_arg), "r"(second_arg), "r"(third_arg), "r"(func_to_call_with_inline_asm), "r"(stackadd)
			:"rcx", "rdx", "r8", "rax"
		);
	else if (num_args > 1)
		asm(
			"mov rcx, %1\n\t"
			"mov rdx, %2\n\t"
			"call %3\n\t"
			"mov %0, rax\n\t"
			:"=r"(funcret)
			:"r"(first_arg), "r"(second_arg), "r"(func_to_call_with_inline_asm), "r"(stackadd)
			:"rcx", "rdx", "rax"
		);
	else if (num_args > 0)
		asm(
			"mov rcx, %1\n\t"
			"call %2\n\t"
			"mov %0, rax\n\t"
			:"=r"(funcret)
			:"r"(first_arg), "r"(func_to_call_with_inline_asm), "r"(stackadd)
			:"rcx", "rax"
		);

	func10(*reinterpret_cast<MyValueType*>(args[0].bytebuf), *reinterpret_cast<MyValueType*>(args[1].bytebuf), *reinterpret_cast<MyValueType*>(args[2].bytebuf), *reinterpret_cast<MyValueType*>(args[3].bytebuf), *reinterpret_cast<MyValueType*>(args[4].bytebuf), *reinterpret_cast<MyValueType*>(args[0].bytebuf), *reinterpret_cast<MyValueType*>(args[1].bytebuf), *reinterpret_cast<MyValueType*>(args[2].bytebuf), *reinterpret_cast<MyValueType*>(args[3].bytebuf), *reinterpret_cast<MyValueType*>(args[4].bytebuf));

	std::cout << sizeof(MyValueType) << std::endl;
	std::cout << sizeof(SmallType) << std::endl;

	return 0;
}