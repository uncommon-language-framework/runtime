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

namespace ULR
{
	namespace IL
	{
		class AssemblyJITInfo;

		struct CompilationError
		{
			enum ErrorCode
			{
				None,
				TypeExpected,
				MemberExpected,
				InvalidInstr,
				LocalTypeExpected,
				InvalidTypeIdentifer,
				InvalidDirective,
				SignalExpected
			};
	
			char* error;
			ErrorCode code;
			byte* byte_at;
	
			operator bool()
			{
				return code != ErrorCode::None;
			}
		};
	}

	enum ULRInternalError : int
	{
		None,
		DebuggerNotFound,
		InvalidDebugger,
		AssemblyNotFound,
		AssemblyNotRead,
		InvalidAssembly,
		UnknownDependencyType,
		TypeNotFound,
		EntryPointNotFound,
	};

	template <typename T, typename TErrorInfo = char> struct ULRResult
	{
		public:
			T result;
			ULRInternalError error;
			TErrorInfo error_info;
	};


	enum TypeType : byte // also used with IL
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
		Method,
		Field,
		Ctor,
		Dtor,
		Property
	};

	enum Modifiers : uint16_t // also used with IL
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
		Sealed = 1 << 9,
		New = 1 << 10,
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
			std::map<std::string_view, std::vector<MemberInfo*>> static_attrs;
			std::map<std::string_view, std::vector<MemberInfo*>> inst_attrs;
			
			std::vector<Type*> interfaces;
			Type* immediate_base;

			bool is_empty_generic = false;
			bool is_generic_construction = false;
			unsigned int num_type_args = 0;
			std::vector<Type*> type_args;
			
			Type* element_type; // if the type is an array type
			size_t element_storage_size;

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
			void* offset;
			char* generic_llir;
			Type* rettype;
			MethodInfo(char* name, bool is_static, std::vector<Type*> argsig, Type* rettype, void* offset, int attrs, bool is_generic, char* generic_llir = nullptr);
			~MethodInfo();

			char* Invoke(char* self, std::vector<char*> args);
	};

	class ConstructorInfo : public MemberInfo
	{
		public:
			std::vector<Type*> argsig;
			void* offset;
			bool is_static = true;
			char* generic_llir;
			
			ConstructorInfo(std::vector<Type*> signature, void* offset, int attrs, bool is_generic, char* generic_llir = nullptr);

			// in the high-level API [System.Reflection]ConstructorInfo.Invoke() should return an object, here, the empty object must be passed to it as the first arg  (and the method's return value is ignored by Invoke())
			void Invoke(char* self, std::vector<char*> args);
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
			char* path;
			char* meta;
			size_t metalen;
			void** addr;
			char** deps;
			int (*entry)(char*) = nullptr; // even if Main() doesn't take args, the register will be ignored by Main() so it doesn't matter if we pass it and it doesn't accept string[] argv
			std::map<std::string_view, Type*> types;
			std::unordered_map<std::string_view, void*> cached_sym_lookups;
			IL::AssemblyJITInfo* jit_info = nullptr;

			Assembly(char* name, char* path, char* meta, size_t metalen, void** addr, char** deps, HMODULE handle);
			~Assembly();
	};
}

inline bool IsBoxableStruct(ULR::Type* type)
{
	return (type->decl_type == ULR::TypeType::Struct);
}

inline bool IsEvenStructSize(ULR::Type* type)
{
	return (type->size == 1 || type->size == 2 || type->size == 4 || type->size == 8);
}
inline bool IsFriendlyStructSizex64(ULR::Type* type)
{
	// everything <= 8 should be friendly since the rest of the bytes would be padding
	return (type->size <= 8);
}

inline bool NeedsCallAllocatedSpace(ULR::Type* type)
{
	return IsBoxableStruct(type) && !IsFriendlyStructSizex64(type);
}

inline bool IsFloatingPointType(ULR::Type* type)
{
	return strcmp(type->name, "[System]Float32") == 0 || strcmp(type->name, "[System]Float64") == 0;
}