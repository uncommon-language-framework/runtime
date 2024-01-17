#include "Lib/Loader.hpp"
#include "Lib/ULRAPI.hpp"
#include "Lib/Resolver.hpp"
#include <iostream>
#include <map>
#include <vector>
#include <string>
#include <Windows.h>

using namespace ULR;
using namespace ULR::API;
using namespace ULR::Resolver;

int main(int argc, char* argv[])
{
	char* assembly_name = argv[1];

	Loader::ReadAssembly(assembly_name);

	Assembly* main = Loader::LoadAssembly(assembly_name);

	if (main->entry == NULL)
	{
		throw std::runtime_error("No entry point found.");
	}

	ULRAPIImpl api = ULRAPIImpl(&Loader::LoadedAssemblies);

	void (*init_asm)(IULRAPI*) = (void (*)(IULRAPI*)) GetProcAddress(main->handle, "InitAssembly");

	init_asm((IULRAPI*) &api);
	
	int retcode = main->entry();

	// FreeLibrary(mod);

	for (auto& entry : Loader::ReadAssemblies)
	{
		delete entry.second;
	}

	for (auto& entry : Loader::LoadedAssemblies)
	{
		delete entry.second;
	}

	return retcode;
}