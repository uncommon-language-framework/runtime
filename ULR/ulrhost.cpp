#include "Lib/Loader.hpp"
#include "Lib/Resolver.hpp"
#include <iostream>
#include <set>
#include <map>
#include <chrono>
#include <vector>
#include <codecvt>
#include <locale>
#include <string>
#include <csignal>
#include <Windows.h>
#include <dbghelp.h>

using namespace ULR;
using namespace ULR::Resolver;


using std::chrono::duration;
using precise_clock = std::chrono::steady_clock;

#define get_duration_ms(duration) std::chrono::duration_cast<std::chrono::nanoseconds>(duration)

char* (*special_string_MAKE_FROM_LITERAL)(char* str, int len);
char* (*special_array_from_ptr)(void* ptr, int size, Type* type);

char* generate_ulr_argv(int argc, char* argv[])
{
	char** ulr_args = new char*[argc-1]; // argc-1 to skip ulrhost.exe arg

	for (int i = 0; i < argc-1; i++) // argc-1 to skip ulrhost.exe arg
	{
		ulr_args[i] = special_string_MAKE_FROM_LITERAL(argv[i+1], strlen(argv[i+1]));
	}

	Type* StringArrayType = Loader::LoadedAssemblies["ULR.<ArrayTypes>"]->types["[System]String[]"];

	char* arr = special_array_from_ptr(ulr_args, argc-1, StringArrayType);

	delete[] ulr_args;

	return arr;
}

void handle_access_violation(int signo)
{
	std::cerr
		<< "Signal SIGSEGV recieved: Segmentation Fault. May be due to a null dereference or invalid pointer dereference. Stacktrace:"
		<< internal_api->GetStackTrace(2);
}

int main(int argc, char* argv[])
{
	std::signal(SIGSEGV, handle_access_violation);

	ULRAPIImpl lclapi = ULRAPIImpl( // perhaps refactor Loader into an object someday
		&Loader::LoadedAssemblies,
		&Loader::ReadAssemblies,
		Loader::ReadAssembly,
		Loader::LoadAssembly
	);
	/* Initialize Internal Library */

	internal_api = &lclapi;

	Assembly* ArrayTypeAssembly = new Assembly(strdup("ULR.<ArrayTypes>"), "", 0, nullptr, nullptr, nullptr, 0, nullptr, (HMODULE) nullptr);
	Loader::LoadedAssemblies[ArrayTypeAssembly->name] = ArrayTypeAssembly;
	
	/* Load Stdlib*/
	
	char* stdlib_path = "../../ulflib/src/native/System.Runtime.Native.dll";

	Loader::ReadAssembly(stdlib_path);
	Assembly* stdlibasm = Loader::LoadAssembly(stdlib_path, &lclapi);

	/* Load Main Assembly */

	char* assembly_name = argv[1];

	Loader::ReadAssembly(assembly_name);

	Assembly* mainasm = Loader::LoadAssembly(assembly_name, &lclapi);

	if (mainasm->entry == nullptr)
	{
		throw std::runtime_error("No entry point found.");
	}

	/* Initialize string[] args / argv */

	special_string_MAKE_FROM_LITERAL = (char* (*)(char*, int)) lclapi.LocateSymbol(stdlibasm, "special_string_MAKE_FROM_LITERAL");
	special_array_from_ptr = (char* (*)(void*, int, Type*)) lclapi.LocateSymbol(stdlibasm, "special_array_from_ptr");
	
	if (ArrayTypeAssembly->types.count("[System]String[]") == 0) //  if System.String[] (string[]) not already loaded (or is a nullptr for some reason)
	{
		Type* StringArrayType = new Type(TypeType::ArrayType, ArrayTypeAssembly, strdup("[System]String[]"), Modifiers::Public | Modifiers::Sealed, 0, { }, lclapi.GetType("[System]Object"), lclapi.GetType("[System]String"));
		ArrayTypeAssembly->types[StringArrayType->name] =  StringArrayType;
	}

	char* ulr_args_arr_obj = generate_ulr_argv(argc, argv);

	int retcode;
	
	try { retcode = mainasm->entry(ulr_args_arr_obj); }
	catch (char* exc)
	{
		Type* SystemException = lclapi.GetTypeOf(exc); // OR GetType("[System]Exception", "System.Runtime.Native.dll")

		PropertyInfo* StackTraceProperty = lclapi.GetProperty(SystemException, "StackTrace", BindingFlags::Instance | BindingFlags::Public);
		PropertyInfo* MessageProperty = lclapi.GetProperty(SystemException, "Message", BindingFlags::Instance | BindingFlags::Public);

		// These are both System_Strings
		void* stacktrace = StackTraceProperty->GetValue(exc);
		void* message = MessageProperty->GetValue(exc);

		// extract char from strings

		int stacktrace_len = *((int*) (((char*) stacktrace)+sizeof(Type*)));
		int message_len = *((int*) (((char*) message)+sizeof(Type*)));

		char* stacktrace_cstr = (char*) (((char*) stacktrace)+sizeof(Type*)+sizeof(int));
		char* message_cstr = (char*) (((char*) message)+sizeof(Type*)+sizeof(int));

		// does this work?
		std::cerr
			<< "Unhandled Exception "
			<< lclapi.GetDisplayNameOf(SystemException)
			<< ": "
			<< message_cstr
			<< stacktrace_cstr
			<< std::endl;
		
		retcode = 1;
	}
	
	// Final deallocation and cleanup (of ULR objects and the allocated assemblies)

	for (auto& entry : lclapi.allocated_objs)
	{
		free(entry.first);
	}

	lclapi.allocated_size = 0;

	std::set<Assembly*> allocated_asms;

	for (auto& entry : Loader::ReadAssemblies) allocated_asms.emplace(entry.second);
	for (auto& entry : Loader::LoadedAssemblies) allocated_asms.emplace(entry.second);

	for (auto& allocated_assembly : allocated_asms)
	{
		delete allocated_assembly;
	}

	for (auto& placeholder : Loader::alloced_generic_placeholders)
	{
		delete placeholder;
	}

	SymCleanup(GetCurrentProcess());

	return retcode;
}