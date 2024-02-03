#include "../Assembly.hpp"

namespace ULR
{
	ConstructorInfo::ConstructorInfo(std::vector<Type*> signature, void* offset, int attrs)
	{
		this->decl_type = MemberType::Ctor;
		this->name = ".ctor";
		this->is_static = is_static;
		this->offset = offset;
		this->attrs = attrs;
		this->signature = signature;
	}
}