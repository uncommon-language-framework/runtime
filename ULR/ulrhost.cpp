#include "Lib/Loader.hpp"
#include "Lib/ULRAPI.hpp"
#include "Lib/Resolver.hpp"
#include <iostream>
#include <set>
#include <map>
#include <vector>
#include <string>
#include <Windows.h>

using namespace ULR;
using namespace ULR::API;
using namespace ULR::Resolver;

int main(int argc, char* argv[])
{
	/* Load Stdlib*/
	
	char* stdlib_path = strdup("../../ulflib/src/native/System.Runtime.Native.dll");

	Loader::ReadAssembly(stdlib_path);
	Loader::LoadAssembly(stdlib_path);

	/* Load Main Assembly */

	char* assembly_name = strdup(argv[1]);

	Loader::ReadAssembly(assembly_name);

	Assembly* mainasm = Loader::LoadAssembly(assembly_name);

	if (mainasm->entry == NULL)
	{
		throw std::runtime_error("No entry point found.");
	}
	
	std::cout << mainasm->types.begin()->second->name << std::endl;

	ULRAPIImpl api = ULRAPIImpl(&Loader::LoadedAssemblies);

	void (*init_asm)(IULRAPI*) = (void (*)(IULRAPI*)) GetProcAddress(mainasm->handle, "InitAssembly");

	init_asm((IULRAPI*) &api);
	
	int retcode = mainasm->entry();

	// FreeLibrary(mod);

	std::set<Assembly*> allocated_asms;

	for (auto& entry : Loader::ReadAssemblies) allocated_asms.emplace(entry.second);
	for (auto& entry : Loader::LoadedAssemblies) allocated_asms.emplace(entry.second);

	for (auto& allocated_assembly : allocated_asms)
	{
		delete allocated_assembly;
	}

	return retcode;
}