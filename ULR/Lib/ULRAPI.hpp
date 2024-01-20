#include "Assembly.hpp"
#include <vector>

#pragma once

namespace ULR::API
{
	class IULRAPI
	{
		public:
			virtual std::vector<MemberInfo*> GetMember(Type* type, char name[]) = 0;

			virtual ConstructorInfo* GetCtor(Type* type, std::vector<Type*> signature) = 0;
			virtual DestructorInfo* GetDtor(Type* type) = 0;

			virtual MethodInfo* GetMethod(Type* type, char name[], std::vector<Type*> signature, int bindingflags) = 0;
			virtual FieldInfo* GetField(Type* type, char name[], int bindingflags) = 0;
			virtual PropertyInfo* GetProperty(Type* type, char name[], int bindingflags) = 0;
			
			virtual Type* GetType(char full_qual_typename[]) = 0;
			virtual Type* GetType(char full_qual_typename[], char assembly_hint[]) = 0;
			
			virtual void* AllocateObject(size_t size) = 0;
			virtual void* AllocateZeroed(size_t size) = 0;
	};

	enum BindingFlags
	{
		Default = 0,
		Instance = 1 << 0,
		Static = 1 << 1,
		Public = 1 << 2,
		NonPublic = 1 << 3
	};
}