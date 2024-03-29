#define TEST(condition, num) if (condition) std::cout << "+ Test " << num << " passed!\n"; else std::cout << "- Test " << num << " failed :(\n";

#include <StdULR.hpp>
#include <iostream>

BEGIN_ULR_EXPORT

sizeof_ns1_System_Int32 overload0_ns0_Program_Method();

void InitAssembly(ULRAPIImpl* ulr)
{
	internal_api = ulr;
}

void overload0_ns0_Program_ctor(char* self) {}

sizeof_ns1_System_Int32 overload0_ns0_Program_Main(char* argv)
{
	char* obj = internal_api->ConstructObject(
		overload0_ns0_Program_ctor,
		internal_api->GetType("[]Program", "InterfaceTest.dll")
	);

	TEST(obj, 1);

	// begin vcall

	void** vtable = internal_api->GetTypeOf(obj)->interface_vtable[
		internal_api->GetType("[]IProgram", "InterfaceTest.dll")
	];

	TEST(vtable, 2);

	sizeof_ns1_System_Int32 (*method)() = (sizeof_ns1_System_Int32 (*)()) vtable[0];

	TEST(method == overload0_ns0_Program_Method, 3);

	sizeof_ns1_System_Int32 res = method();

	TEST(res == 23, 5);

	// end vcall

	return 0;
}

sizeof_ns1_System_Int32 overload0_ns0_Program_Method()
{
	TEST(true, 4);

	return 23;	
}

char ulrmeta[] = "pc[]Program:[System]Object,[]IProgram$8;.ctor p();.entr s[System]Int32 Main([System]String[]);pv[System]Int32 Method();\n"
	"pe[]IProgram:[System]Object,$8;pv[System]Int32 Method();\n";
	
void* ulraddr[] = {
	(void*) overload0_ns0_Program_ctor,
	(void*) overload0_ns0_Program_Main,
	(void*) overload0_ns0_Program_Method,
	nullptr
};

char* ulrdeps[] = { nullptr };

END_ULR_EXPORT
