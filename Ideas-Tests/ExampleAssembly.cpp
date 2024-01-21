#include <iostream>
#include "../ULR/Lib/Public/StdULR.hpp"

ULRAPIImpl* ULRImpl = nullptr;

extern "C"
{

	void InitAssembly(ULRAPIImpl* ulr)
	{
		ULRImpl = ulr;
	}

	void Program_ctor(void* self /* rest of args... */)
	{

	}

	int Program_Main()
	{
		// void (*ns1_System_Console_WriteLine)(void*) = (void (*)(void*)) ULRImpl->GetMethod("System", "Console", "WriteLine", "void;[System]String", MethodFlags::PUBLIC | MethodFlags::STATIC);
		// void* (*ns1_System_String_ctor)(void*) = (void* (*)(void*)) ULRImpl->GetMethod("System", "String", ".ctor", "[$native]char[]", MethodFlags::CTOR);
		// ns1_System_Int32_sizeof (*ns1_System_Int32_ctor)(int) = (ns1_System_Int32_sizeof (*)(int)) ULRImpl->GetMethod("System", "Int32", ".ctor", "[$native]int", MethodFlags::CTOR);

		// ns1_System_Console_WriteLine(ns1_System_String_ctor((void*) "Hello, World!"));

		// return ns1_System_Int32_ctor(0);

		std::cout << "Hello from ExampleAssembly" << std::endl;

		return 0;
	}

	// pc -> public class
	// [] -> no namespace
	// Program -> classname
	// $4 -> takes four bytes (4 byte pointer to actual type)
	char ulrmeta[] = "pc[]Program$4;.ctor p();.entr s[System]Int32 Main();\n"
	""
	"";

	void* ulraddr[] = {
		(void*) Program_ctor,
		(void*) Program_Main
	};
}