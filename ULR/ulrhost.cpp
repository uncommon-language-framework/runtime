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

using std::chrono::duration;
using precise_clock = std::chrono::steady_clock;

#define get_duration_ms(duration) std::chrono::duration_cast<std::chrono::nanoseconds>(duration)

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

	auto refl_start = precise_clock::now();
	
	MethodInfo* reflmainmethod = api.GetMethod(
		api.GetType("[]Program", "ExampleAssembly.dll"),
		"Main",
		{ },
		BindingFlags::Static | BindingFlags::NonPublic
	);

	void* boxedretcode = reflmainmethod->Invoke(nullptr, { });

	int retcode = api.UnBox<int>(boxedretcode);
	
	duration<double, std::nano> refl_ms = precise_clock::now() - refl_start;
	std::cout << "Milliseconds for reflection call: " << refl_ms.count() << std::endl;

	auto normal_start = precise_clock::now();
	
	retcode = mainasm->entry(); // allocation caching skews the results -- must change this
	
	duration<double, std::nano> normal_ms = precise_clock::now() - normal_start;

	std::cout << "Milliseconds for normal call: " << normal_ms.count() << std::endl;

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