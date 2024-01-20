#include <Windows.h>
#include <map>
#include <memory>
#include <vector>
#include <string>
#include <stdexcept>
#include <cstring>

#pragma once

namespace ULR
{
	enum TypeType
	{
		Class,
		Struct,
		ReadonlyStruct,
		RefStruct,
		ReadonlyRefStruct,
		StaticClass,
		AbstractClass,
		FinalClass,
		Record
	};

	enum MemberType
	{
		Method,
		Field,
		Ctor,
		Dtor,
		Property
	};

	enum Modifiers
	{
		Private = 0,
		Public = 1 << 0,
		Protected = 1 << 1,
		Internal = 1 << 2,
		Static = 1 << 3,
		Readonly = 1 << 4,
		Virtual = 1 << 5,
		Abstract = 1 << 6,
		Partial = 1 << 7,
		Extern = 1 << 8,
		Sealed = 1 << 9
	};

	struct cmp_chr_ptr
	{
		bool operator()(char const *a, char const *b) const
		{
			return strcmp(a, b) < 0;
		}
	};

	class MemberInfo
	{
		public:
			MemberType decl_type;
			bool is_static;
			char* name;
			int attrs;

			// MemberInfo(MemberType decl_type, char* name, bool is_static, int attrs);
			virtual ~MemberInfo();
	};

	class Type
	{
		public:
			TypeType decl_type;
			char* name;
			int attrs;
			size_t size;
			std::map<char*, std::vector<MemberInfo*>, cmp_chr_ptr> static_attrs;
			std::map<char*, std::vector<MemberInfo*>, cmp_chr_ptr> inst_attrs;

			Type(TypeType decl_type, char* name, int attrs, size_t size);
			~Type();

			void AddStaticMember(MemberInfo* member);
			void AddInstanceMember(MemberInfo* member);
	};

	class MethodInfo : public MemberInfo
	{
		public:
			/* `signature` where
					<argtype> <argtype> <rettype>
					(rettype is the last type element) */
			std::vector<Type*> signature;
			void* offset;
			MemberType decl_type = MemberType::Method;
			
			MethodInfo(char* name, bool is_static, std::vector<Type*> signature, void* offset, int attrs);
			~MethodInfo();
	};

	class ConstructorInfo : public MemberInfo
	{
		public:
			/* `signature` where
					<argtype> <argtype>...
					(no rettype) */
			std::vector<Type*> signature;
			void* offset;
			bool is_static = true;
			MemberType decl_type = MemberType::Ctor;
			
			ConstructorInfo(std::vector<Type*> signature, void* offset, int attrs);
	};

	class DestructorInfo : public MemberInfo
	{
		public:
			void* offset;
			bool is_static = false;
			MemberType decl_type = MemberType::Dtor;
			
			DestructorInfo(void* offset, int attrs);
	};

	class FieldInfo : public MemberInfo
	{
		public:
			void* offset;
			MemberType decl_type = MemberType::Field;
			
			FieldInfo(char* name, bool is_static, void* offset, int attrs);
			~FieldInfo();
	};

	class PropertyInfo : public MemberInfo
	{
		public:
			MethodInfo* getter;
			MethodInfo* setter;
			MemberType decl_type = MemberType::Property;

			PropertyInfo(char* name, bool is_static, MethodInfo* getter, MethodInfo* setter, int attrs);
			~PropertyInfo();
	};

	class Assembly
	{
		public:
			HMODULE handle;
			char* name;
			char* meta;
			size_t metalen;
			void** addr;
			int (*entry)() = NULL;
			std::map<char*, Type*, cmp_chr_ptr> types;

			Assembly(char* name, char* meta, size_t metalen, void** addr, HMODULE handle);
			~Assembly();
	};
}