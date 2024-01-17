#include "Lib/Loader.hpp"
#include <iostream>
#include <map>
#include <vector>
#include <string>
#include <Windows.h>

using namespace ULR;

int main(int argc, char* argv[])
{
	char* assembly_name = argv[1];

	HMODULE mod = Loader::ReadAssembly(assembly_name);

	Assembly* main = Loader::LoadAssembly(assembly_name);

	if (main->entry == NULL)
	{
		throw std::runtime_error("No entry point found.");
	}
	
	int retcode = main->entry();

	FreeLibrary(mod);

	return retcode;
}