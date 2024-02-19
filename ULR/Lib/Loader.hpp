#include "Assembly.hpp"
#include "Windows.h"
#include <memory>
#include <vector>
#include <map>

#pragma once

namespace ULR::Resolver { class ULRAPIImpl; }

namespace ULR::Loader
{
	extern std::map<char*, Assembly*, cmp_chr_ptr> ReadAssemblies;
	extern std::map<char*, Assembly*, cmp_chr_ptr> LoadedAssemblies;
	extern std::vector<GenericPlaceholder*> alloced_generic_placeholders;

	HMODULE ReadAssembly(char* dll);
	Assembly* LoadAssembly(char* dll, Resolver::ULRAPIImpl* api);
	Type* GetType(char* qual_name);
	std::vector<Type*> ParseArgs(size_t* i, char* meta);
}