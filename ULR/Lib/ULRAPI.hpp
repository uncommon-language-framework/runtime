#include "Assembly.hpp"
#include <vector>

#pragma once

namespace ULR::API
{
	class IULRAPI
	{
		public:
			std::vector<MemberInfo*> GetMember(Type* type, char name[]);

			ConstructorInfo* GetCtor(Type* type, std::vector<Type*> signature);
			DestructorInfo* GetDtor(Type* type);

			MethodInfo* GetMethod(Type* type, char name[], std::vector<Type*> signature, int bindingflags);
			FieldInfo* GetField(Type* type, char name[], int bindingflags);
			PropertyInfo* GetProperty(Type* type, char name[], int bindingflags);
			
			Type* GetType(char full_qual_typename[]);
			Type* GetType(char full_qual_typename[], char assembly_hint[]);
			
			void* AllocateObject(size_t size);
			void* AllocateZeroed(size_t size);
	};

	enum BindingFlags
	{
		Default,
		Instance = 1 << 0,
		Static = 1 << 1,
		Public = 1 << 2,
		NonPublic = 1 << 3
	};
}