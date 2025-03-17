#include "../Resolver.hpp"
#include <dbghelp.h>

namespace ULR::Resolver
{
	ULRAPIImpl::~ULRAPIImpl()
	{
		for (auto& entry : internal_api->allocated_objs)
		{
			free(entry.first);
		}
	
		internal_api->allocated_size = 0;
	
		for (void* ptr : internal_api->allocated_field_offsets)
		{
			free(ptr);
		}
	
		std::set<Assembly*> allocated_asms;
	
		for (auto& entry : loader->ReadAssemblies) allocated_asms.emplace(entry.second);
		for (auto& entry : loader->LoadedAssemblies) allocated_asms.emplace(entry.second);
	
		for (auto allocated_assembly : allocated_asms)
		{
			delete allocated_assembly;
		}
	
		for (auto placeholder : loader->alloced_generic_placeholders)
		{
			delete placeholder;
		}
	
		FreeLibrary(debugger);
		SymCleanup(GetCurrentProcess());
	}
}