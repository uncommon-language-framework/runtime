#include "../Assembly.hpp"

namespace ULR
{
	Assembly::Assembly(char* name, char* meta, void** addr)
	{
		this->name = name;
		this->meta = meta;
		this->addr = addr;
	}
}