#define TEST(condition, num) if (condition) std::cout << "+ Test " << num << " passed!\n"; else std::cout << "- Test " << num << " failed :(\n";

#include <StdULR.hpp>
#include <iostream>

BEGIN_ULR_EXPORT

char* (*special_string_MAKE_FROM_LITERAL)(const char* str, int len);

void InitAssembly(ULRAPIImpl* ulr)
{
	internal_api = ulr;

	special_string_MAKE_FROM_LITERAL = 
		(char* (*)(const char*, int))
		internal_api->LocateSymbol(
			internal_api->LocateAssembly("System.Runtime.Native.dll"),
			"special_string_MAKE_FROM_LITERAL"
		);
}

void overload0_ns0_Program_ctor(char* self) {}

sizeof_ns1_System_Int32 overload0_ns0_Program_Main(char* argv)
{
	std::cout << "Started!\n";

	char* teststr = special_string_MAKE_FROM_LITERAL("test quote -> \" <- test quote", 29);

	internal_api->Breakpoint({ "FakeSource.cb", 12, "Fake.SourceLine = 12;", 1 });

	return 0;
}

char ulrmeta[] = "pc[]Program:[System]Object,$8;.ctor p();.entr s[System]Int32 Main([System]String[]);\n";

void* ulraddr[] = {
	(void*) overload0_ns0_Program_ctor,
	(void*) overload0_ns0_Program_Main
};

char* ulrdeps[] = { nullptr };

END_ULR_EXPORT
