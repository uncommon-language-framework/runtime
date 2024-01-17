#include "../Assembly.hpp"

namespace ULR
{
	Assembly::Assembly(char* name, char* meta, size_t metalen, void** addr, HMODULE handle)
	{
		this->name = name;
		this->meta = meta;
		this->addr = addr;
		this->handle = handle;
		this->metalen = metalen;
	}
}