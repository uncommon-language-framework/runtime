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

	Type::~Type()
	{
		free(name);
		
		for (auto& entry : static_attrs)
		{
			delete entry.second;
		}

		for (auto& entry : inst_attrs)
		{
			delete entry.second;
		}
	}
}