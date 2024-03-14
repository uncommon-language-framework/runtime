#define TEST(condition, num) if (condition) std::cout << "+ Test " << num << " passed!\n"; else std::cout << "- Test " << num << " failed :(\n";

#include <StdULR.hpp>
#include <iostream>

BEGIN_ULR_EXPORT

void InitAssembly(ULRAPIImpl* ulr)
{
	internal_api = ulr;
}

void overload0_ns0_Program_ctor(char* self) { }

sizeof_ns1_System_Int32 overload0_ns0_Program_Main(char* argv)
{
	ULR_USE_STACKBOX();

	sizeof_ns1_System_Int32 num = 57;

	Type* inttype = internal_api->GetType("[System]Int32", "System.Runtime.Native.dll");

	MethodInfo* method = internal_api->GetMethod(
		internal_api->GetType("[]Program", "StackBoxTest.dll"),
		"Method",
		{ inttype },
		BindingFlags::Public | BindingFlags::Static
	);

	TEST(method, 1);

	ULR_STACKBOX(num, inttype);

	char* boxedint = ULR_STACKBOXED_VALUE;

	// char* boxedint = internal_api->Box(num, inttype);

	char* res = method->Invoke(nullptr, { boxedint });

	sizeof_ns1_System_Int32 unboxedres = internal_api->UnBox<sizeof_ns1_System_Int32>(res);

	TEST(unboxedres == 23, 3);

	return 0;
}

sizeof_ns1_System_Int32 overload0_ns0_Program_Method(sizeof_ns1_System_Int32 arg)
{
	TEST(arg == 57, 2);

	return 23;
}

char ulrmeta[] = "pc[]Program:[System]Object,$8;.ctor p();.entr s[System]Int32 Main([System]String[]);ps[System]Int32 Method([System]Int32);\n";

void* ulraddr[] = {
	(void*) overload0_ns0_Program_ctor,
	(void*) overload0_ns0_Program_Main,
	(void*) overload0_ns0_Program_Method
};

END_ULR_EXPORT
