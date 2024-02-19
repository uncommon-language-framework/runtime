#include <iostream>
#include "../ULR/Lib/Public/StdULR.hpp"

using ULR::Type;

ULRAPIImpl* api = nullptr;

Type* CachedProgramType;

extern "C"
{
	const size_t ulrlocalslen = 1; // we don't use any managed locals rn, change later once used
	const void* ulrlocals[ulrlocalslen]; // if lcls are used, then change to ulrlocals[ulrlocalslen];
	const size_t ulrlocalsmapping[][2] = {
		{0, 0},
		{0, 1}
	};
	

	void InitAssembly(ULRAPIImpl* ulr)
	{
		api = ulr;
		internal_api = ulr;
		CachedProgramType = api->GetType("[]Program", "ExampleAssembly.dll");
	}

	void ns0_Program_ctor(void* self /* rest of args... */)
	{

	}

	int ns0_Program_Main()
	{
		// void (*ns1_System_Console_WriteLine)(void*) = (void (*)(void*)) ULRImpl->GetMethod("System", "Console", "WriteLine", "void;[System]String", MethodFlags::PUBLIC | MethodFlags::STATIC);
		// void* (*ns1_System_String_ctor)(void*) = (void* (*)(void*)) ULRImpl->GetMethod("System", "String", ".ctor", "[$native]char[]", MethodFlags::CTOR);
		// ns1_System_Int32_sizeof (*ns1_System_Int32_ctor)(int) = (ns1_System_Int32_sizeof (*)(int)) ULRImpl->GetMethod("System", "Int32", ".ctor", "[$native]int", MethodFlags::CTOR);

		// ns1_System_Console_WriteLine(ns1_System_String_ctor((void*) "Hello, World!"));

		// return ns1_System_Int32_ctor(0);

		void* obj = api->ConstructObject(ns0_Program_ctor, CachedProgramType);
		ulrlocals[0] = obj;

		std::cout << "Hello from ExampleAssembly" << std::endl;

		Type* typeofobj = api->GetTypeOf(obj);
		std::cout << "Type of obj: " << typeofobj->name << " (" << typeofobj->assembly->name << ')' << std::endl;

		ulrlocals[0] = nullptr;

		return 0;
	}

	// pc -> public class
	// [] -> no namespace
	// Program -> classname
	// $4 -> takes four bytes (4 byte pointer to actual type)
	char ulrmeta[] = "pc[]Program:[System]Object$8;.ctor p();.entr s[System]Int32 Main();\n"
	""
	"";

	void* ulraddr[] = {
		(void*) ns0_Program_ctor,
		(void*) ns0_Program_Main
	};
}