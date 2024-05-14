#include "../Assembly.hpp"

namespace ULR
{
	Assembly::Assembly(char* name, char* path, char* meta, size_t metalen, void** addr, char** deps, HMODULE handle)
	{
		this->name = name;
		this->path = path;
		this->meta = meta;
		this->addr = addr;
		this->deps = deps;
		this->handle = handle;
		this->metalen = metalen;


		cached_sym_lookups.reserve(20);
	}

	Assembly::~Assembly()
	{
		free(name);
		free(path);
		FreeLibrary(handle);
		
		for (auto &entry : types)
		{
			delete entry.second;
		}
	}
}