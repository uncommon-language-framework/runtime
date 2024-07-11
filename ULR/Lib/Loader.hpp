#include "Assembly.hpp"
#include "Windows.h"
#include <memory>
#include <vector>
#include <map>

#pragma once

namespace ULR::Resolver { class ULRAPIImpl; }

namespace ULR::Loader
{
	extern std::map<std::string_view, Assembly*> ReadAssemblies;
	extern std::map<std::string_view, Assembly*> LoadedAssemblies;
	extern std::vector<GenericPlaceholder*> alloced_generic_placeholders;

	HMODULE ReadAssembly(const char* dll);
	Assembly* LoadAssembly(const char* dll, Resolver::ULRAPIImpl* api);
	Type* GetType(std::string_view qual_name);
	std::vector<Type*> ParseArgs(size_t* i, char* meta);
	void PopulateVtable(Type* type);
}