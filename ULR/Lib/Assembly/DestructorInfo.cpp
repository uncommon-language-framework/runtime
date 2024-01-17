#include "../Assembly.hpp"

namespace ULR
{
	DestructorInfo::DestructorInfo(void* offset, int attrs)
	{
		this->name = ".dtor";
		this->is_static = is_static;
		this->offset = offset;
		this->attrs = attrs;
	}
}