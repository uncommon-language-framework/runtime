#include "Assembly.hpp"
#include "Windows.h"
#include <memory>
#include <vector>
#include <map>

#pragma once

namespace ULR::Loader
{
	extern std::map<std::string, std::shared_ptr<Assembly>> ReadAssemblies;
	extern std::map<std::string, std::shared_ptr<Assembly>> LoadedAssemblies;

	HMODULE ReadAssembly(std::string dll);
	std::shared_ptr<Assembly> LoadAssembly(std::string dll);
	std::shared_ptr<Type> GetType(std::string qual_name);
	std::vector<std::shared_ptr<Type>> ParseArgs(size_t* i, std::string meta);
}