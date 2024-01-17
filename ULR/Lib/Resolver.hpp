#include "Assembly.hpp"
#include "ULRAPI.hpp"

#pragma once

namespace ULR::Resolver
{
	class ULRAPIImpl : public API::IULRAPI
	{
		std::map<char*, Assembly*, cmp_chr_ptr>* assemblies;
		
		public:
			ULRAPIImpl(std::map<char*, Assembly*, cmp_chr_ptr>* assembly);

			std::vector<MemberInfo*> GetMember(Type* type, char name[]);
			std::vector<MemberInfo*> GetMember(Type* type, char name[]);

			ConstructorInfo* GetCtor(Type* type, std::vector<Type*> signature);
			DestructorInfo* GetDtor(Type* type);

			MethodInfo* GetMethod(Type* type, char name[], std::vector<Type*> signature, int bindingflags);
			FieldInfo* GetField(Type* type, char name[]);
			PropertyInfo* GetProperty(Type* type, char name[]);
			
			size_t GetSizeOf(Type* type);
			size_t GetSizeOf(Type* type);

			Type* GetType(char full_qual_typename[]);
			Type* GetType(char full_qual_typename[], char assembly_hint[]);
			
			void* AllocateObject(size_t size);
			void* AllocateZeroed(size_t size);
	};
}