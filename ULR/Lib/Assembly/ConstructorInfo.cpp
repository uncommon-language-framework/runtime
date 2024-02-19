#include "../Assembly.hpp"

namespace ULR
{
	ConstructorInfo::ConstructorInfo(std::vector<Type*> signature, void* offset, int attrs, bool is_generic, char* generic_llir)
	{
		this->decl_type = MemberType::Ctor;
		this->name = ".ctor";
		this->is_static = is_static;
		this->offset = offset;
		this->attrs = attrs;
		this->signature = signature;
		this->is_empty_generic = is_generic;
		this->generic_llir = generic_llir;
	}
}