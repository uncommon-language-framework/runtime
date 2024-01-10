#include "Assembly.hpp"
#include "Windows.h"
#include <memory>
#include <vector>
#include <map>

#pragma once

namespace ULR::Loader
{
	extern std::map<char*, std::shared_ptr<Assembly>, cmp_chr_ptr> ReadAssemblies;
	extern std::map<char*, std::shared_ptr<Assembly>, cmp_chr_ptr> LoadedAssemblies;

	HMODULE ReadAssembly(char* dll);
	std::shared_ptr<Assembly> LoadAssembly(char* dll);
	std::shared_ptr<Type> GetType(char* qual_name);
	std::vector<std::shared_ptr<Type>> ParseArgs(size_t* i, char* meta);
}