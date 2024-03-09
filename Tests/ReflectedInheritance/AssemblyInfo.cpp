#define TEST(condition, num) if (condition) std::cout << "+ Test " << num << " passed!\n"; else std::cout << "- Test " << num << " failed :(\n"
#include <StdULR.hpp>
#include <iostream>

using ULR::MethodInfo;


BEGIN_ULR_EXPORT

void overload0_ns0_Derived_ctor(char* self);

void InitAssembly(ULRAPIImpl* ulr)
{
	internal_api = ulr;
}

void overload0_ns0_Program_ctor(char* self) {}



sizeof_ns1_System_Int32 overload0_ns0_Program_Main(char* argv)
{
	Type* derived = internal_api->GetType("[]Derived", "ReflectedInheritance.dll");

	TEST(derived, 1);

	MethodInfo* method = internal_api->GetMethod(derived, "Method", { }, BindingFlags::Public | BindingFlags::Instance);

	TEST(method, 2);

	char* boxedret = method->Invoke(\
		internal_api->ConstructObject(overload0_ns0_Derived_ctor, derived),
		{}
	);

	sizeof_ns1_System_Int32 unboxed = internal_api->UnBox<sizeof_ns1_System_Int32>(boxedret);

	TEST(unboxed == 27, 4);

	return 0;
}

sizeof_ns1_System_Int32 overload0_ns0_Program_Method()
{
	TEST(true, 3);

	return 27;
}

void overload0_ns0_Derived_ctor(char* self)
{
	overload0_ns0_Program_ctor(self);
}

char ulrmeta[] = "pc[]Program:[System]Object,$8;.ctor p();.entr s[System]Int32 Main([System]String[]);p[System]Int32 Method();\n"
	"pc[]Derived:[]Program,$8;.ctor p();\n";

void* ulraddr[] = {
	(void*) overload0_ns0_Program_ctor,
	(void*) overload0_ns0_Program_Main,
	(void*) overload0_ns0_Program_Method,
	(void*) overload0_ns0_Derived_ctor
};

END_ULR_EXPORT
