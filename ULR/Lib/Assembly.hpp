#include <map>
#include <memory>
#include <vector>
#include <string>
#include <cstring>

#pragma once

namespace ULR
{
	enum TypeType
	{
		Class = 0
	};

	enum MemberType
	{
		Method = 0,
		Field = 1,
		Ctor = 2,
		Dtor = 3
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

	// struct cmp_chr_ptr
	// {
	// 	bool operator()(char const *a, char const *b) const
	// 	{
	// 		return strcmp(a, b) < 0;
	// 	}
	// };

	class MemberInfo
	{
		public:
			MemberType decl_type;
			bool is_static;
			std::string name;
			void* offset;
			int attrs;

			MemberInfo();
			MemberInfo(MemberType decl_type, std::string name, bool is_static, void* offset, int attrs);
	};

	class Type
	{
		public:
			TypeType decl_type;
			std::string name;
			int attrs;
			std::map<std::string, MemberInfo> static_attrs;
			std::map<std::string, MemberInfo> inst_attrs;

			Type(TypeType decl_type, std::string name, int attrs);

			void AddStaticMember(MemberInfo member);
			void AddInstanceMember(MemberInfo member);
	};

	struct sizeof_Int32
	{
		public:
			unsigned char buf[4];
	};

	class Assembly
	{
		public:
			std::string name;
			std::string meta;
			void** addr;
			sizeof_Int32 (*entry)() = NULL;
			std::map<std::string, std::shared_ptr<Type>> types;

			Assembly(std::string name, std::string meta, void** addr);
	};
}