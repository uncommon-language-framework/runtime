#include "../Assembly.hpp"

namespace ULR
{
	PropertyInfo::PropertyInfo(char* name, bool is_static, MethodInfo* getter, MethodInfo* setter, int attrs)
	{
		this->name = name;
		this->is_static = is_static;
		this->getter = getter;
		this->setter = setter;
		this->attrs = attrs;
	}

	PropertyInfo::~PropertyInfo()
	{
		free(name);

		delete getter;
		delete setter;
	}
}