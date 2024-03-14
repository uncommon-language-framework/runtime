#define TEST(condition, num) if (condition) std::cout << "+ Test " << num << " passed!\n"; else std::cout << "- Test " << num << " failed :(\n";

#include <StdULR.hpp>
#include <iostream>

BEGIN_ULR_EXPORT

char** ns1_System_String_Empty;

void InitAssembly(ULRAPIImpl* ulr)
{
	internal_api = ulr;

	ns1_System_String_Empty = (char**) internal_api->LocateSymbol(
		internal_api->LocateAssembly("System.Runtime.Native.dll"),
		"ns1_System_String_Empty"
	);
}

void overload0_ns0_Program_ctor(char* self) {}

sizeof_ns1_System_Int32 overload0_ns0_Program_Main(char* argv)
{
	FieldInfo* info = internal_api->GetField( // Accessing field System.String.Empty
		internal_api->GetType("[System]String", "System.Runtime.Native.dll"),
		"Empty",
		BindingFlags::Public | BindingFlags::Static
	);

	TEST(info, 1);

	char* value = info->GetValue(nullptr);

	TEST(value == *ns1_System_String_Empty, 2);

	TEST(value != (char*) internal_api->GetType("[System]String", "System.Runtime.Native.dll"), 3);

	TEST(*((Type**) value) == internal_api->GetType("[System]String", "System.Runtime.Native.dll"), 4)

	return 0;
}

char ulrmeta[] = "pc[]Program:[System]Object,$8;.ctor p();.entr s[System]Int32 Main([System]String[]);\n";

void* ulraddr[] = {
	(void*) overload0_ns0_Program_ctor,
	(void*) overload0_ns0_Program_Main
};

END_ULR_EXPORT
