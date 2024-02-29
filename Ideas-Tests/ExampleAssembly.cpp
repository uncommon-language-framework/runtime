#include <iostream>
#include "../ULR/Lib/Public/StdULR.hpp"

ULRAPIImpl* api = nullptr;

Type* CachedProgramType;
Type* CachedExceptionType;

BEGIN_ULR_EXPORT
const size_t ulrlocalslen = 1; // we don't use any managed locals rn, change later once used
const void* ulrlocals[ulrlocalslen]; // if lcls are used, then change to ulrlocals[ulrlocalslen];
const size_t ulrlocalsmapping[][2] = {
	{0, 0},
	{0, 1}
};

char* (*special_exception_prep_for_throw)(char* self);
void (*overload0_ns1_System_Exception_ctor)(char* self);
void (*overload1_ns1_System_Exception_ctor)(char* self, char* msg);
char* (*special_string_MAKE_FROM_LITERAL)(const wchar_t* str, int len);
int (*special_array_ns1_System_get_Length)(char* self);
char* (*special_array_ref_overload_operator_idx_ns1_System)(char* self, int idx);
void (*external_func)(void (*callback)());



void InitAssembly(ULRAPIImpl* ulr)
{
	api = ulr;
	internal_api = ulr;
	CachedProgramType = api->GetType("[]Program", "ExampleAssembly.dll");
	CachedExceptionType = api->GetType("[System]Exception", "System.Runtime.Native.dll");

	/* Load Stdlib Static References */

	Assembly* stdlib = api->LocateAssembly("System.Runtime.Native.dll");

	special_exception_prep_for_throw = (char* (*)(char*)) api->LocateSymbol(stdlib, "special_exception_prep_for_throw");
	overload0_ns1_System_Exception_ctor = (void (*)(char*)) api->LocateSymbol(stdlib, "overload0_ns1_System_Exception_ctor");
	overload1_ns1_System_Exception_ctor = (void (*)(char*, char*)) api->LocateSymbol(stdlib, "overload1_ns1_System_Exception_ctor");
	special_array_ns1_System_get_Length = (int (*)(char*)) api->LocateSymbol(stdlib, "special_array_ns1_System_get_Length");
	special_array_ref_overload_operator_idx_ns1_System = (char* (*)(char*, int)) api->LocateSymbol(stdlib, "special_array_ref_overload_operator_idx_ns1_System");
	special_string_MAKE_FROM_LITERAL = (char* (*)(const wchar_t*, int)) api->LocateSymbol(stdlib, "special_string_MAKE_FROM_LITERAL");
	
	HMODULE external_lib = LoadLibraryA("ExternalLib.dll");
	external_func = (void (*)(void (*)())) GetProcAddress(external_lib, "external_func");
}

void ns0_Program_ctor(char* self /* rest of args... */)
{
}

void unknown_throw_exc()
{
	char* exc = api->ConstructObject(
		overload1_ns1_System_Exception_ctor,
		CachedExceptionType,
		special_string_MAKE_FROM_LITERAL(L"uh-oh exception", 15)
	);

	throw special_exception_prep_for_throw(exc);
}

int ns0_Program_Main(char* argv) // TODO: put [System]String[] args in metadata
{
	// void (*ns1_System_Console_WriteLine)(void*) = (void (*)(void*)) ULRImpl->GetMethod("System", "Console", "WriteLine", "void;[System]String", MethodFlags::PUBLIC | MethodFlags::STATIC);
	// void* (*ns1_System_String_ctor)(void*) = (void* (*)(void*)) ULRImpl->GetMethod("System", "String", ".ctor", "[$native]char[]", MethodFlags::CTOR);
	// ns1_System_Int32_sizeof (*ns1_System_Int32_ctor)(int) = (ns1_System_Int32_sizeof (*)(int)) ULRImpl->GetMethod("System", "Int32", ".ctor", "[$native]int", MethodFlags::CTOR);

	// ns1_System_Console_WriteLine(ns1_System_String_ctor((void*) "Hello, World!"));

	// return ns1_System_Int32_ctor(0);

	char* first_arg = special_array_ref_overload_operator_idx_ns1_System(argv, 0);

	int first_arg_len = *reinterpret_cast<int*>(first_arg+sizeof(Type*));
	wchar_t* first_arg_ptr = (wchar_t*) (first_arg+sizeof(Type*)+sizeof(int));

	std::wcout << "First element of string[] argv: " << std::wstring_view(first_arg_ptr, first_arg_len) << std::endl;

	char* obj = api->ConstructObject(ns0_Program_ctor, CachedProgramType);
	ulrlocals[0] = obj;

	std::cout << "Hello from ExampleAssembly" << std::endl;

	Type* typeofobj = api->GetTypeOf(obj);
	std::cout << "Type of obj: " << typeofobj->name << " (" << typeofobj->assembly->name << ')' << std::endl;

	special_array_ref_overload_operator_idx_ns1_System(argv, 10); // this should throw an exception

	external_func(unknown_throw_exc);

	ulrlocals[0] = nullptr;

	return 0;
}

// pc -> public class
// [] -> no namespace
// Program -> classname
// $4 -> takes four bytes (4 byte pointer to actual type)
char ulrmeta[] = "pc[]Program:[System]Object,$8;.ctor p();.entr s[System]Int32 Main();\n"
""
"";

void* ulraddr[] = {
	(void*) ns0_Program_ctor,
	(void*) ns0_Program_Main
};

END_ULR_EXPORT