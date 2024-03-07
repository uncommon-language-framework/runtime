#include "../Assembly.hpp"

namespace ULR
{
	Assembly::Assembly(char* name, char* meta, size_t metalen, void** addr, char** locals, Type** ulrlocals_valtypeinfo, size_t localslen, size_t** localsmapping, HMODULE handle)
	{
		this->name = name;
		this->meta = meta;
		this->addr = addr;
		this->locals = locals;
		this->localslen = localslen;
		this->ulrlocals_valtypeinfo = ulrlocals_valtypeinfo;
		this->localsmapping = localsmapping;
		this->handle = handle;
		this->metalen = metalen;

		cached_sym_lookups.reserve(20);
	}

	Assembly::~Assembly()
	{
		free(name);
		FreeLibrary(handle);
		
		for (auto &entry : types)
		{
			delete entry.second;
		}
	}
}