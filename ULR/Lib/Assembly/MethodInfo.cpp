#include "../Assembly.hpp"

namespace ULR
{
	MethodInfo::MethodInfo(char* name, bool is_static, std::vector<Type*> signature, void* offset, int attrs)
	{
		this->decl_type = MemberType::Method;
		this->name = name;
		this->is_static = is_static;
		this->offset = offset;
		this->attrs = attrs;
		this->signature = signature;
	}

	MethodInfo::~MethodInfo()
	{
		free(name);
	}
}