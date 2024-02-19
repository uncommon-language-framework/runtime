#include "../Assembly.hpp"

namespace ULR
{
	DestructorInfo::DestructorInfo(void* offset, int attrs, bool is_generic, char* generic_llir)
	{
		this->decl_type = MemberType::Dtor;
		this->name = ".dtor";
		this->is_static = is_static;
		this->offset = offset;
		this->attrs = attrs;
		this->is_empty_generic = is_generic;
		this->generic_llir = generic_llir;
	}
}