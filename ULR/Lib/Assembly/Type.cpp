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

	void Type::AddStaticMember(std::shared_ptr<MemberInfo> member)
	{
		static_attrs[member->name] = member;
	}

	void Type::AddInstanceMember(std::shared_ptr<MemberInfo> member)
	{
		inst_attrs[member->name] = member;
	}
}