#include "../Assembly.hpp"
#include <map>

namespace ULR
{
	Type::Type(TypeType decl_type, char* name, int attrs)
	{
		this->decl_type = decl_type;
		this->name = name;
		this->attrs = attrs;
	}

	void Type::AddStaticMember(MemberInfo* member)
	{
		static_attrs[member->name] = member;
	}

	void Type::AddInstanceMember(MemberInfo* member)
	{
		inst_attrs[member->name] = member;
	}
}