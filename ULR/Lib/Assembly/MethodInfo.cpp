#include "../Assembly.hpp"

namespace ULR
{
	MethodInfo::MethodInfo(char* name, bool is_static, std::vector<Type*> argsig, Type* rettype, void* offset, int attrs)
	{
		this->decl_type = MemberType::Method;
		this->name = name;
		this->is_static = is_static;
		this->offset = offset;
		this->attrs = attrs;
		this->argsig = argsig;
		this->rettype = rettype;
	}

	MethodInfo::~MethodInfo()
	{
		free(name);
	}
}