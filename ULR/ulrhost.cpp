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
#include <Windows.h>
#include <dbghelp.h>

using namespace ULR;
using namespace ULR::Resolver;

using std::chrono::duration;
using precise_clock = std::chrono::steady_clock;

#define get_duration_ms(duration) std::chrono::duration_cast<std::chrono::nanoseconds>(duration)

std::wstring to_wstr(std::u16string str)
{
	std::wstring wstr;

	wstr.reserve(str.size());

	for (wchar_t c : str)
	{
		wstr.push_back((wchar_t) c);
	}

	return wstr;
}

int main(int argc, char* argv[])
{	
	ULRAPIImpl lclapi = ULRAPIImpl( // perhaps refactor Loader into an object someday
		&Loader::LoadedAssemblies,
		&Loader::ReadAssemblies,
		Loader::ReadAssembly,
		Loader::LoadAssembly
	);

	/* Initialize Internal Library */

	internal_api = &lclapi;

	
	/* Load Stdlib*/
	
	char* stdlib_path = strdup("../../ulflib/src/native/System.Runtime.Native.dll");

	Loader::ReadAssembly(stdlib_path);
	Loader::LoadAssembly(stdlib_path, &lclapi);

	/* Load Main Assembly */

	char* assembly_name = strdup(argv[1]);

	Loader::ReadAssembly(assembly_name);

	Assembly* mainasm = Loader::LoadAssembly(assembly_name, &lclapi);

	if (mainasm->entry == nullptr)
	{
		throw std::runtime_error("No entry point found.");
	}

	int retcode;
	
	try { retcode = mainasm->entry(); }
	catch (char* exc)
	{
		Type* SystemException = lclapi.GetTypeOf(exc); // OR GetType("[System]Exception", "System.Runtime.Native.dll")

		PropertyInfo* StackTraceProperty = lclapi.GetProperty(SystemException, "StackTrace", BindingFlags::Instance | BindingFlags::Public);
		PropertyInfo* MessageProperty = lclapi.GetProperty(SystemException, "Message", BindingFlags::Instance | BindingFlags::Public);

		// These are both System_Strings
		void* stacktrace = StackTraceProperty->GetValue(exc);
		void* message = MessageProperty->GetValue(exc);

		// extract wchar_t from strings

		int message_len = *((int*) (((char*) message)+sizeof(Type*))); // we don't need stacktrace len because it will never have a null char

		wchar_t* stacktrace_cstr = (wchar_t*) (((char*) stacktrace)+sizeof(Type*)+sizeof(int));
		wchar_t* message_cstr = (wchar_t*) (((char*) message)+sizeof(Type*)+sizeof(int));

		std::wstring_view stacktrace_cppstr = stacktrace_cstr;
		std::wstring_view message_cppstr(message_cstr, message_len);

		// does this work?
		std::wcout
			<< "Exception of type "
			<< SystemException->name
			<< " thrown: "
			<< message_cppstr
			<< " ---- Stacktrace: "
			<< stacktrace_cppstr
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