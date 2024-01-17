#include "../Assembly.hpp"

namespace ULR
{
	FieldInfo::FieldInfo(char* name, bool is_static, void* offset, int attrs)
	{
		this->name = name;
		this->is_static = is_static;
		this->offset = offset;
		this->attrs = attrs;
	}

	FieldInfo::~FieldInfo()
	{
		free(name);
	}
}