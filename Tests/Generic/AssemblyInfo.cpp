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
	
}

char ulrmeta[] = "pc[]Program:[System]Object,$8;.ctor p();.entr s[System]Int32 Main([System]String[]);\n";

void* ulraddr[] = {
	(void*) overload0_ns0_Program_ctor,
	(void*) overload0_ns0_Program_Main
};

char* ulrdeps[] = { nullptr };

END_ULR_EXPORT
