#include <Windows.h>
#include <map>
#include <memory>
#include <vector>
#include <string>
#include <stdexcept>
#include <cstring>
#include <functional>

#pragma once

#define IsBoxableStruct(typeptr) typeptr->decl_type == TypeType::Struct || typeptr->decl_type == TypeType::ReadonlyStruct
#define IsEvenStructSize(typeptr) typeptr->size == 1 || typeptr->size == 2 || typeptr->size == 4 || typeptr->size == 8
// everything <= 8 should be friendly since the rest of the bytes
#define IsFriendlyStructSize(typeptr) typeptr->size <= 8

namespace ULR
{
	enum TypeType
	{
		Class = 1,
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
		Method = 1,
		Field,
		Ctor,
		Dtor,
		Property
	};

	enum Modifiers
	{
		Private = 0, // TODO: MAY NEED TO CHANGE THIS FOR PRIVATE CHECKS / OR CHECK THAT IT IS NOT PUBLIC/PROTECTED/INTERNAL
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

	class Type;

	class MemberInfo
	{
		public:
			MemberType decl_type;
			Type* parent_type;
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
			
			MethodInfo(char* name, bool is_static, std::vector<Type*> signature, void* offset, int attrs);
			~MethodInfo();

			void* Invoke(void* self, std::vector<void*> args); // Invoke, GetPointer, and the like have to be defined in the header so that they can be accessible by compilations
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
			
			ConstructorInfo(std::vector<Type*> signature, void* offset, int attrs);

			void Invoke(std::vector<void*> args);
	};

	class DestructorInfo : public MemberInfo
	{
		public:
			void* offset;
			bool is_static = false;
			
			DestructorInfo(void* offset, int attrs);

			void Invoke(void* obj)
			{
				if (IsBoxableStruct(parent_type))
				{
					obj = ((Type**) obj) + 1; // give an illusion of an unboxed 'this' ptr by skipping the type ptr
				}

				void (*func)(void* self) = (void (*)(void*)) offset;

				func(obj);
			}
	};

	class FieldInfo : public MemberInfo
	{
		public:
			void* offset;
			
			FieldInfo(char* name, bool is_static, void* offset, int attrs);
			~FieldInfo();
			
			void* GetPointer(void* self)
			{
				if (is_static) return offset;
				
				return ((char*) self)+((size_t) offset);
			}


	};

	class PropertyInfo : public MemberInfo
	{
		public:
			MethodInfo* getter;
			MethodInfo* setter;

			PropertyInfo(char* name, bool is_static, MethodInfo* getter, MethodInfo* setter, int attrs);
			~PropertyInfo();

			void* GetValue();
			void SetValue(void* value);

	};

	class Assembly
	{
		public:
			HMODULE handle;
			char* name;
			char* meta;
			size_t metalen;
			void** addr;
			void** locals;
			size_t localslen;
			size_t** localsmapping;
			int (*entry)() = NULL;
			std::map<char*, Type*, cmp_chr_ptr> types;

			Assembly(char* name, char* meta, size_t metalen, void** addr, void** locals, size_t localslen, size_t** localsmapping, HMODULE handle);
			~Assembly();
	};
}