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

	void DestructorInfo::Invoke(void* obj)
	{
		if (IsBoxableStruct(parent_type))
		{
			obj = ((Type**) obj) + 1; // give an illusion of an unboxed 'this' ptr by skipping the type ptr
		}

		void (*func)(void* self) = (void (*)(void*)) offset;

		func(obj);
	}
}