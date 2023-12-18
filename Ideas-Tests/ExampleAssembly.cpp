#include <iostream>
#include "ulr.h"

using namespace ULR;

ULRAPI* ULRImpl = nullptr;

extern "C"
{

	void InitAssembly(ULRAPI* ulr)
	{
		ULRImpl = ulr;
	}

	void Program_ctor(void* self /* rest of args... */)
	{

	}

	// Int32 takes 4 bytes for our current purposes
	// it is a value type so doesn't need pointer to its actual type for vtable-like capabilities
	struct ns1_System_Int32_sizeof
	{
		unsigned char bytebuf[4];
	};

	ns1_System_Int32_sizeof Program_Main()
	{
		// void (*ns1_System_Console_WriteLine)(void*) = (void (*)(void*)) ULRImpl->GetMethod("System", "Console", "WriteLine", "void;[System]String", MethodFlags::PUBLIC | MethodFlags::STATIC);
		// void* (*ns1_System_String_ctor)(void*) = (void* (*)(void*)) ULRImpl->GetMethod("System", "String", ".ctor", "[$native]char[]", MethodFlags::CTOR);
		// ns1_System_Int32_sizeof (*ns1_System_Int32_ctor)(int) = (ns1_System_Int32_sizeof (*)(int)) ULRImpl->GetMethod("System", "Int32", ".ctor", "[$native]int", MethodFlags::CTOR);

		// ns1_System_Console_WriteLine(ns1_System_String_ctor((void*) "Hello, World!"));

		// return ns1_System_Int32_ctor(0);

		std::cout << "Hello from ExampleAssembly" << std::endl;

		int _tmpnative = 0;	
		ns1_System_Int32_sizeof _tmp;

		std::copy(
			reinterpret_cast<unsigned char*>(&_tmpnative), 
			reinterpret_cast<unsigned char*>(&_tmpnative)+sizeof(_tmpnative),
			_tmp.bytebuf
		);

		return _tmp;
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