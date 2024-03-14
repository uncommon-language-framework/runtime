#define __STDC_FORMAT_MACROS

#include <Windows.h>
#include <map>
#include <memory>
#include <vector>
#include <string>
#include <stdexcept>
#include <cstring>
#include <functional>
#include <unordered_map>
#include <iostream>

#pragma once

#define IsBoxableStruct(typeptr) typeptr->decl_type == TypeType::Struct
#define IsEvenStructSize(typeptr) typeptr->size == 1 || typeptr->size == 2 || typeptr->size == 4 || typeptr->size == 8
// everything <= 8 should be friendly since the rest of the bytes
#define IsFriendlyStructSizex64(typeptr) typeptr->size <= 8

namespace ULR
{
	enum TypeType
	{
		Class,
		Struct,
		RefStruct,
		Record,
		Interface,
		ArrayType
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
		Sealed = 1 << 9,
		New = 1 << 10,
	};

	struct cmp_chr_ptr
	{
		bool operator()(char const *a, char const *b) const
		{
			return strcmp(a, b) < 0;
		}
	};

	class Type;
	class Assembly;

	class MemberInfo
	{
		public:
			MemberType decl_type;
			Type* parent_type;
			bool is_static;
			char* name;
			int attrs;
			bool is_empty_generic;

			// MemberInfo(MemberType decl_type, char* name, bool is_static, int attrs);
			virtual ~MemberInfo();
	};

	class Type
	{
		public:
			TypeType decl_type;
			Assembly* assembly;
			char* name;
			unsigned int attrs;
			size_t size;
			std::map<char*, std::vector<MemberInfo*>, cmp_chr_ptr> static_attrs;
			std::map<char*, std::vector<MemberInfo*>, cmp_chr_ptr> inst_attrs;
			
			std::vector<Type*> interfaces;
			Type* immediate_base;

			bool is_empty_generic = false;
			bool is_generic_construction = false;
			unsigned int num_type_args = 0;
			std::vector<Type*> type_args;
			
			Type* element_type; // if the type is an array type

			void** primary_vtable; // populate this at the end of loading using reflection
			size_t primary_vtable_len;
			std::unordered_map<Type*, void**> interface_vtable;

			Type(
				TypeType decl_type,
				Assembly* assembly,
				char* name,
				unsigned int attrs,
				size_t size,
				std::vector<Type*> interfaces,
				Type* immediate_base,
				bool is_empty_generic,
				unsigned int num_type_args
			);
			Type(
				TypeType decl_type,
				Assembly* assembly,
				char* name,
				unsigned int attrs,
				size_t size,
				std::vector<Type*> interfaces,
				Type* immediate_base,
				Type* array_element_type
			);
			virtual ~Type();

			void AddStaticMember(MemberInfo* member);
			void AddInstanceMember(MemberInfo* member);

			// assumes that the call is valid (`type_args` has the right number of args, `this` is a generic type)
			Type* MakeGeneric(std::vector<Type*> type_args);
			virtual bool IsGenericPlaceholder() { return false; }
	};

	class GenericPlaceholder : public Type
	{
		public:
			unsigned char num;

			GenericPlaceholder(unsigned char generic_num);
			bool IsGenericPlaceholder();
			~GenericPlaceholder();
	};

	class MethodInfo : public MemberInfo
	{
		public:
			std::vector<Type*> argsig;
			Type* rettype;
			void* offset;
			char* generic_llir;
			
			MethodInfo(char* name, bool is_static, std::vector<Type*> argsig, Type* rettype, void* offset, int attrs, bool is_generic, char* generic_llir = nullptr);
			~MethodInfo();

			char* Invoke(char* self, std::vector<char*> args); // Invoke, GetPointer, and the like have to be defined in the header so that they can be accessible by compilations
		};

	class ConstructorInfo : public MemberInfo
	{
		public:
			std::vector<Type*> signature; // argsig since ctors have no rettype
			void* offset;
			bool is_static = true;
			char* generic_llir;
			
			ConstructorInfo(std::vector<Type*> signature, void* offset, int attrs, bool is_generic, char* generic_llir = nullptr);

			void Invoke(std::vector<void*> args);
	};

	class DestructorInfo : public MemberInfo
	{
		public:
			void* offset;
			bool is_static = false;
			char* generic_llir;
			
			DestructorInfo(void* offset, int attrs, bool is_generic, char* generic_llir = nullptr);

			void Invoke(void* obj);
	};

	class FieldInfo : public MemberInfo
	{
		public:
			void* offset;
			Type* valtype;
			
			FieldInfo(char* name, bool is_static, void* offset, Type* valtype, int attrs, bool is_generic);
			~FieldInfo();
			
			char* GetValue(char* self);
			void SetValue(char* self, char* value);
	};

	class PropertyInfo : public MemberInfo
	{
		public:
			MethodInfo* getter;
			MethodInfo* setter;
			Type* valtype;

			PropertyInfo(char* name, bool is_static, Type* valtype, MethodInfo* getter, MethodInfo* setter, int attrs, bool is_generic);
			~PropertyInfo();

			char* GetValue(char* inst);
			void SetValue(char* inst, char* value);

	};

	class Assembly
	{
		public:
			HMODULE handle;
			char* name;
			char* meta;
			size_t metalen;
			void** addr;
			char** locals;
			Type** ulrlocals_valtypeinfo;
			size_t localslen;
			size_t** localsmapping;
			int (*entry)(char*) = nullptr; // even if Main() doesn't take args, the register will be ignored by Main() so it doesn't matter if we pass it and it doesn't accept string[] argv
			std::map<char*, Type*, cmp_chr_ptr> types;
			std::unordered_map<std::string_view, void*> cached_sym_lookups;

			Assembly(char* name, char* meta, size_t metalen, void** addr, char** locals, Type** ulrlocals_valtypeinfo, size_t localslen, size_t** localsmapping, HMODULE handle);
			~Assembly();
	};
}