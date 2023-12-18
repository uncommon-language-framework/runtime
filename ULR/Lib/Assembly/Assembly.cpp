#include "../Assembly.hpp"

namespace ULR
{
	Assembly::Assembly(std::string name, std::string meta, void** addr)
	{
		this->name = name;
		this->meta = meta;
		this->addr = addr;
	}
}