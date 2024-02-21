#include "../Resolver.hpp"

 ULR::Resolver::ULRAPIImpl* internal_api = nullptr;

namespace ULR
{
	FieldInfo::FieldInfo(char* name, bool is_static, void* offset, Type* valtype, int attrs, bool is_generic)
	{
		this->decl_type = MemberType::Field;
		this->name = name;
		this->is_static = is_static;
		this->offset = offset;
		this->attrs = attrs;
		this->is_empty_generic = is_generic;
		this->valtype = valtype;
	}

	FieldInfo::~FieldInfo()
	{
		free(name);
	}

	// assume that the arg types are valid
	char* FieldInfo::GetValue(char* self)
	{
		if (valtype->decl_type != TypeType::Struct)
		{
			if (is_static) return *((char**) offset);
		
			return *(char**) (((char*) self)+((size_t) offset));
		}

		void* objstart;
		size_t objsize = valtype->size;

		if (is_static) objstart = offset;
		else objstart = ((char*) self)+((size_t) offset);	

		Type** boxed = (Type**) internal_api->AllocateObject(sizeof(Type*)+objsize);
		
		boxed[0] = valtype;

		memcpy(boxed+1, objstart, objsize);

		return (char*) boxed;
	}

	// as always, we assume that the types are correct
	void FieldInfo::SetValue(char* self, char* value)
	{
		if (valtype->decl_type != TypeType::Struct)
		{
			if (is_static)
			{
				*(void**) offset = value;
				return;
			}
		
			void** real_offset = (void**) (((char*) self)+((size_t) offset));

			*real_offset = value;
			
			return;
		}


		if (is_static)
		{
			memcpy(offset, ((char*) value)+sizeof(Type*), valtype->size);
			return;
		}

		memcpy(((char*) self)+((size_t) offset), ((char*) value)+sizeof(Type*), valtype->size);
	}
}