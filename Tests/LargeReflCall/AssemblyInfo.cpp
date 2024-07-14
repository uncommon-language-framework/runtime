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
	Type* ProgramType = internal_api->GetType("[]Program");
	Type* SystemInt32Type = internal_api->GetType("[System]Int32");

	TEST(ProgramType, 0);
	TEST(SystemInt32Type, 1);

	MethodInfo* method = internal_api->GetMethod(
		ProgramType, "ManyArgs",
		{
			SystemInt32Type,
			SystemInt32Type,
			SystemInt32Type,
			SystemInt32Type,
			SystemInt32Type,
			SystemInt32Type
		}
	);

	TEST(method, 2);

	int a = 2;
	int b = 5;
	int c = 7;
	int x = 4;
	int y = 10;
	int z = 0;

	char* boxedres = method->Invoke(
		nullptr,
		{
			internal_api->Box<sizeof_ns1_System_Int32>(a, SystemInt32Type),
			internal_api->Box<sizeof_ns1_System_Int32>(b, SystemInt32Type),
			internal_api->Box<sizeof_ns1_System_Int32>(c, SystemInt32Type),
			internal_api->Box<sizeof_ns1_System_Int32>(x, SystemInt32Type),
			internal_api->Box<sizeof_ns1_System_Int32>(y, SystemInt32Type),
			internal_api->Box<sizeof_ns1_System_Int32>(z, SystemInt32Type),
		}
	);

	TEST(boxedres, 3);

	int res = internal_api->UnBox<sizeof_ns1_System_Int32>(boxedres);

	TEST(res == 28, 4);
}

sizeof_ns1_System_Int32 overload0_ns0_Program_ManyArgs(
	sizeof_ns1_System_Int32 a,
	sizeof_ns1_System_Int32 b,
	sizeof_ns1_System_Int32 c,
	sizeof_ns1_System_Int32 x,
	sizeof_ns1_System_Int32 y,
	sizeof_ns1_System_Int32 z
)
{
	return a+b+c+x+y+z;
}

char ulrmeta[] = "pc[]Program:[System]Object,$8;.ctor p();.entr s[System]Int32 Main([System]String[]);s[System]Int32 ManyArgs([System]Int32,[System]Int32,[System]Int32,[System]Int32,[System]Int32,[System]Int32);\n";

void* ulraddr[] = {
	(void*) overload0_ns0_Program_ctor,
	(void*) overload0_ns0_Program_Main,
	(void*) overload0_ns0_Program_ManyArgs,
};

char* ulrdeps[] = { nullptr };

END_ULR_EXPORT
