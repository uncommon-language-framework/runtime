#include "../Assembly.hpp"

namespace ULR
{
	PropertyInfo::PropertyInfo(char* name, bool is_static, Type* valtype, MethodInfo* getter, MethodInfo* setter, int attrs, bool is_generic)
	{
		this->decl_type = MemberType::Property;
		this->name = name;
		this->is_static = is_static;
		this->getter = getter;
		this->setter = setter;
		this->attrs = attrs;
		this->is_empty_generic = is_generic;
		this->valtype = valtype;
	}

	PropertyInfo::~PropertyInfo()
	{
		free(name);

		delete getter;
		delete setter;
	}

	// assumes that it has a getter
	char* PropertyInfo::GetValue(char* self)
	{
		return this->getter->Invoke(self, std::vector<char*>());
	}

	// assumes that it has a setter
	void PropertyInfo::SetValue(char* self, char* value)
	{
		this->setter->Invoke(self, { value });
	}
}