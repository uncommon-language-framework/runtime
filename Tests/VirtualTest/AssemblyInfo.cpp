#define TEST(condition, num) if (condition) std::cout << "+ Test " << num << " passed!\n"; else std::cout << "- Test " << num << " failed :(\n";

#include <StdULR.hpp>
#include <iostream>

BEGIN_ULR_EXPORT

void overload0_ns0_Derived_ctor(char*);
sizeof_ns1_System_Int32 overload0_ns0_Program_Method(char*);
sizeof_ns1_System_Int32 overload0_ns0_Derived_Method(char*);

void InitAssembly(ULRAPIImpl* ulr)
{
	internal_api = ulr;
}

void overload0_ns0_Program_ctor(char* self) {}

sizeof_ns1_System_Int32 overload0_ns0_Program_Main(char* argv)
{
	char* derived = internal_api->ConstructObject(
		overload0_ns0_Derived_ctor,
		internal_api->GetType("[]Derived", "VirtualTest.dll")
	);

	TEST(derived, 1);

	// begin vcall

	void** vtable = internal_api->GetTypeOf(derived)->primary_vtable;

	TEST(vtable, 2);

	sizeof_ns1_System_Int32 (*method)(char*) = (sizeof_ns1_System_Int32 (*)(char*)) vtable[2]; // vtable index is 2 since 0 and 1 are taken by Object.ToString() and Object.GetType()

	TEST(method == overload0_ns0_Derived_Method, 3);

	sizeof_ns1_System_Int32 res = method(derived);

	TEST(res == 77, 5);

	// end vcall

	// perform a type change

	*(Type**) derived = internal_api->GetType("[]Program");

	void** basevtable = internal_api->GetTypeOf(derived)->primary_vtable;

	TEST(basevtable, 6);

	sizeof_ns1_System_Int32 (*basemethod)(char*) = (sizeof_ns1_System_Int32 (*)(char*)) basevtable[2];

	TEST(basemethod == overload0_ns0_Program_Method, 7);

	sizeof_ns1_System_Int32 baseres = basemethod(derived);

	TEST(baseres == 23, 9);

	return 0;
}

sizeof_ns1_System_Int32 overload0_ns0_Program_Method(char* self)
{
	TEST(true, 8);

	return 23;	
}

void overload0_ns0_Derived_ctor(char* self)
{
	overload0_ns0_Program_ctor(self);
}

sizeof_ns1_System_Int32 overload0_ns0_Derived_Method(char* self)
{
	TEST(true, 4);

	return 77;
}

char ulrmeta[] = "pc[]Program:[System]Object,$8;.ctor p();.entr s[System]Int32 Main([System]String[]);pv[System]Int32 Method();\n"
	"pc[]Derived:[]Program,$8;.ctor p();pv[System]Int32 Method();\n";
	
void* ulraddr[] = {
	(void*) overload0_ns0_Program_ctor,
	(void*) overload0_ns0_Program_Main,
	(void*) overload0_ns0_Program_Method,
	(void*) overload0_ns0_Derived_ctor,
	(void*) overload0_ns0_Derived_Method
};

char* ulrdeps[] = { nullptr };

END_ULR_EXPORT
