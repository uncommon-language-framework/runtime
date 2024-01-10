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
			void* offset;
			int attrs;

			MemberInfo();
			MemberInfo(MemberType decl_type, char* name, bool is_static, void* offset, int attrs);
	};

	class MethodInfo : public MemberInfo
	{
		public:
			std::vector<char*> sigmeta;
			std::vector<void*> offsets;
			
			MethodInfo(MemberType decl_type, char* name, bool is_static, void* offset, int attrs);
	};

	class Type
	{
		public:
			TypeType decl_type;
			char* name;
			int attrs;
			std::map<char*, std::shared_ptr<MemberInfo>, cmp_chr_ptr> static_attrs;
			std::map<char*, std::shared_ptr<MemberInfo>, cmp_chr_ptr> inst_attrs;

			Type(TypeType decl_type, char* name, int attrs);

			void AddStaticMember(std::shared_ptr<MemberInfo> member);
			void AddInstanceMember(std::shared_ptr<MemberInfo> member);
	};

	class Assembly
	{
		public:
			char* name;
			char* meta;
			void** addr;
			int (*entry)() = NULL;
			std::map<const char*, std::shared_ptr<Type>> types;

			Assembly(char* name, char* meta, void** addr);
	};
}