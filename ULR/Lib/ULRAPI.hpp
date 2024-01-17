#include "Assembly.hpp"
#include <cstddef>

#pragma once

namespace ULR::API
{
	class IULRAPI
	{
		public:
			virtual std::vector<MemberInfo*> GetMember(Type* type, char name[]);
			virtual std::vector<MemberInfo*> GetMember(Type* type, char name[]);

			virtual ConstructorInfo* GetCtor(Type* type, std::vector<Type*> signature);
			virtual DestructorInfo* GetDtor(Type* type);

			virtual MethodInfo* GetMethod(Type* type, char name[], std::vector<Type*> signature, int bindingflags);
			virtual FieldInfo* GetField(Type* type, char name[]);
			virtual PropertyInfo* GetProperty(Type* type, char name[]);
			
			virtual size_t GetSizeOf(Type* type);
			virtual size_t GetSizeOf(Type* type);

			virtual Type* GetType(char full_qual_typename[]);
			virtual Type* GetType(char full_qual_typename[], char assembly_hint[]);
			
			virtual void* AllocateObject(size_t size);
			virtual void* AllocateZeroed(size_t size);
	};
}