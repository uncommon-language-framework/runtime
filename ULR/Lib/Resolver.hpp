#include "Assembly.hpp"
#include "ULRAPI.hpp"

#pragma once

namespace ULR::Resolver
{
	class ULRAPIImpl : API::IULRAPI
	{
		std::map<char*, Assembly*, cmp_chr_ptr>* assemblies;
		
		public:
			ULRAPIImpl(std::map<char*, Assembly*, cmp_chr_ptr>* assembly);

			void** GetMember(char full_qual_typename[], char name[], char sigmeta[], int flags);
			void** GetMember(char full_qual_typename[], char name[], char sigmeta[], int flags, char assembly_hint[]);
			size_t GetSizeOf(char full_qual_typename[]);
			size_t GetSizeOf(char full_qual_typename[], char assembly_hint[]);
			void* GetType(char full_qual_typename[]);
			void* GetType(char full_qual_typename[], char assembly_hint[]);
			void* AllocateObject(size_t size);
			void* AllocateZeroed(size_t size);
	};
}