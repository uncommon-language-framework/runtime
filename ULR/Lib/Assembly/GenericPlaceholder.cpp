#include "../Assembly.hpp"

namespace ULR
{
	GenericPlaceholder::GenericPlaceholder(unsigned char generic_num) :
		Type(TypeType::Class, nullptr, strdup(""), 0, 0, { }, nullptr, false, 0),
		num(generic_num)
		{
			primary_vtable = new void*[0];
		};

	bool GenericPlaceholder::IsGenericPlaceholder() { return true; }

	GenericPlaceholder::~GenericPlaceholder() { }
}