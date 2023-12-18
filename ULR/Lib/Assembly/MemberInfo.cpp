#include "../Assembly.hpp"

namespace ULR
{
	MemberInfo::MemberInfo() { }

	MemberInfo::MemberInfo(MemberType decl_type, std::string name, bool is_static, void* offset, int attrs)
	{
		this->decl_type = decl_type;
		this->name = name;
		this->is_static = is_static;
		this->offset = offset;
		this->attrs = attrs;
	}
}