#include "Lib/Loader.hpp"
#include <iostream>
#include <map>
#include <vector>
#include <string>
#include <Windows.h>

using namespace ULR;

int main(int argc, char* argv[])
{
	const char* assembly_name = argv[1];

	HMODULE mod = Loader::ReadAssembly(assembly_name);

	std::shared_ptr<Assembly> main = Loader::LoadAssembly(assembly_name);

	if (main->entry == NULL)
	{
		throw std::runtime_error("No entry point found.");
	}
	
	sizeof_Int32 retcode = main->entry();

	int* ret = reinterpret_cast<int*>(retcode.buf);

	FreeLibrary(mod);

	return *ret;
}