#define TEST(condition, num) if (condition) std::cout << "+ Test " << num << " passed!\n"; else std::cout << "- Test " << num << " failed :(\n";

#include <StdULR.hpp>
#include <iostream>

BEGIN_ULR_EXPORT

void InitAssembly(ULRAPIImpl* ulr)
{
	internal_api = ulr;
}

void overload0_ns0_Program_ctor(char* self) {}

sizeof_ns1_System_Int32 overload0_ns0_Program_Main(char* argv)
{
	Assembly* jitasm = internal_api->LoadJITAssembly("/Users/carlf/programs/ulrproject/runtime/Tests/LoadJITAsm/adder.uil.ulas");

	Type* Int32Type = internal_api->GetType("[System]Int32");

	MethodInfo* addinfo = internal_api->GetMethod(
		internal_api->GetType("[]Adder"),
		"Add",
		{ Int32Type, Int32Type }
	);

	std::cout << addinfo->offset << std::endl;

	auto add = (int (*)(int, int)) addinfo->offset;

	int a = 4;
	int b = 5;

	std::cout << "add(" << a << ", " << b << ") = " << add(a, b) << '\n';

	return 0;
}

char ulrmeta[] = "pc[]Program:[System]Object,$8;.ctor p();.entr s[System]Int32 Main([System]String[]);\n";

void* ulraddr[] = {
	(void*) overload0_ns0_Program_ctor,
	(void*) overload0_ns0_Program_Main
};

char* ulrdeps[] = { nullptr };

END_ULR_EXPORT
