#include "Assembly.hpp"
#include "Windows.h"
#include <memory>
#include <vector>
#include <map>

#pragma once

#define NATIVE_ASSEMBLY_IDENT "ntv:"
#define JIT_ASSEMBLY_IDENT "jit:"
#define DEPS_ASSEMBLY_IDENT_LEN 4

namespace ULR::Resolver { class ULRAPIImpl; }

namespace ULR
{
	class Loader
	{	
		public:
			std::map<std::string_view, Assembly*> ReadAssemblies;
			std::map<std::string_view, Assembly*> LoadedAssemblies;
			std::vector<GenericPlaceholder*> alloced_generic_placeholders;

			ULRResult<HMODULE> ReadNativeAssembly(const char* dll);
			ULRResult<Assembly*> LoadNativeAssembly(const char* dll, Resolver::ULRAPIImpl* api);
			ULRResult<Type*> GetType(std::string_view qual_name);
			ULRResult<std::vector<Type*>> ParseArgs(size_t* i, char* meta);
			void PopulateVtable(Type* type);
	};
}