#include "Lib/Loader.hpp"
#include "Lib/ULRAPI.hpp"
#include "Lib/Resolver.hpp"
#include <iostream>
#include <set>
#include <map>
#include <chrono>
#include <vector>
#include <string>
#include <Windows.h>

using namespace ULR;
using namespace ULR::API;
using namespace ULR::Resolver;

using precise_clock = std::chrono::high_resolution_clock;

#define get_duration_ns(duration) std::chrono::duration_cast<std::chrono::nanoseconds>(duration)

int main(int argc, char* argv[])
{
	ULRAPIImpl api = ULRAPIImpl( // perhaps refactor Loader into an object someday
		&Loader::LoadedAssemblies,
		&Loader::ReadAssemblies,
		Loader::ReadAssembly,
		Loader::LoadAssembly
	);

	/* Initialize Internal Library */
	
	ULR::internal_api = &api;

	/* Load Stdlib*/
	
	char* stdlib_path = strdup("../../ulflib/src/native/System.Runtime.Native.dll");

	Loader::ReadAssembly(stdlib_path);
	Loader::LoadAssembly(stdlib_path, &api);

	/* Load Main Assembly */

	char* assembly_name = strdup(argv[1]);

	Loader::ReadAssembly(assembly_name);

	Assembly* mainasm = Loader::LoadAssembly(assembly_name, &api);

	if (mainasm->entry == nullptr)
	{
		throw std::runtime_error("No entry point found.");
	}


	auto normal_start = precise_clock::now();
	int retcode = mainasm->entry();
	
	auto normal_ns = get_duration_ns(precise_clock::now() - normal_start);

	std::cout << "Nanoseconds for normal call: " << normal_ns.count() << std::endl;

	
	auto refl_start = precise_clock::now();
	
	MethodInfo* reflmainmethod = api.GetMethod(
		api.GetType("[]Program", "ExampleAssembly.dll"),
		"Main",
		{ api.GetType("[System]Int32", "System.Runtime.Native.dll") },
		BindingFlags::Static | BindingFlags::NonPublic
	);

	Type** boxedretcode = (Type**) reflmainmethod->Invoke(nullptr, { });

	retcode = *reinterpret_cast<int*>(boxedretcode+1);
	
	auto refl_ns = get_duration_ns(precise_clock::now() - refl_start);
	std::cout << "Nanoseconds for reflection call: " << refl_ns.count() << std::endl;

	// Final deallocation and cleanup (of ULR objects and the allocated assemblies)

	for (auto& entry : api.allocated_objs)
	{
		free(entry.first);
	}

	api.allocated_size = 0;

	std::set<Assembly*> allocated_asms;

	for (auto& entry : Loader::ReadAssemblies) allocated_asms.emplace(entry.second);
	for (auto& entry : Loader::LoadedAssemblies) allocated_asms.emplace(entry.second);

	for (auto& allocated_assembly : allocated_asms)
	{
		delete allocated_assembly;
	}

	return retcode;
}