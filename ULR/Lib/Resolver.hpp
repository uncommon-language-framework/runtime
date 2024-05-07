#include "Assembly.hpp"
#include <algorithm>
#include <iostream>
#include <type_traits>
#include <set>
#include <thread>
#include <mutex>
#include <llvm/ExecutionEngine/Orc/LLJIT.h>

#pragma once

#define GC_TRIGGERED_EXC_CODE 0xC001F00D

namespace ULR::Resolver
{
	enum BindingFlags
	{
		Default,
		Instance = 1 << 0,
		Static = 1 << 1,
		Public = 1 << 2,
		NonPublic = 1 << 3
	};

	struct GCResult
	{
		public:
			size_t size_collected = 0;
			size_t num_collected = 0;
	};

	struct StaticDebugInfo
	{
		const char* source_filename;
		unsigned int source_lineno;
		const char* source_line;
		unsigned int breakpoint_no;
	};

	class ULRAPIImpl
	{
		Assembly* (*LoadAssemblyPtr)(char name[], ULRAPIImpl* api);
		HMODULE (*ReadAssemblyPtr)(char name[]);
		void (*PopulateVtablePtr)(Type* type);
		void (*StaticDebug)(StaticDebugInfo& info);

		size_t prev_size_accessible = 0;

		std::map<pthread_t, std::pair<char**, char**>> gc_lclsearch_addrs;

		std::mutex gc_lock;
		std::mutex alloc_lock;

		public:
			GCResult last_gc_result;
			std::map<char*, size_t> allocated_objs;
			size_t allocated_size = 0;
			std::unique_ptr<llvm::orc::LLJIT> jit;
			std::vector<void*> allocated_field_offsets;
			std::map<char*, Assembly*, cmp_chr_ptr>* assemblies;
			std::map<char*, Assembly*, cmp_chr_ptr>* read_assemblies;

			ULRAPIImpl(
				std::map<char*, Assembly*, cmp_chr_ptr>* assemblies,
				std::map<char*, Assembly*, cmp_chr_ptr>* read_assemblies,
				HMODULE (*ReadAssembly)(char name[]),
				Assembly* (*LoadAssembly)(char name[], ULRAPIImpl* api),
				void (*PopulateVtable)(Type* type),
				HMODULE debugger
			);

			bool EnsureLoaded(char assembly_name[]);
			Assembly* LoadAssembly(char assembly_name[]);
			Assembly* LocateAssembly(char assembly_name[]);
			void* LocateSymbol(Assembly* assembly, char symbol_name[]);

			std::vector<MemberInfo*> GetMember(Type* type, char name[]);

			ConstructorInfo* GetCtor(Type* type, std::vector<Type*> signature);
			DestructorInfo* GetDtor(Type* type);

			MethodInfo* GetMethod(Type* type, char name[], std::vector<Type*> argsignature, int bindingflags);
			MethodInfo* GetNonNewMethod(Type* type, char name[], std::vector<Type*> argsignature, int bindingflags); // this is solely for the virtual table loader
			FieldInfo* GetField(Type* type, char name[], int bindingflags);
			PropertyInfo* GetProperty(Type* type, char name[], int bindingflags);
			
			Type* GetArrayTypePrimarily(char full_qual_typename[]);
			Type* GetType(char full_qual_typename[]);
			Type* GetType(char full_qual_typename[], char assembly_hint[]);
			inline Type* GetTypeOf(char* obj) { return *reinterpret_cast<Type**>(obj); } // special inline decl because this is a highly used small API function (for vcalls, so it has to be fast)
			
			char* AllocateObject(size_t size);
			char* AllocateZeroed(size_t size);
			char* AllocateObjectNoGC(size_t size);
			char* AllocateZeroedNoGC(size_t size);

			void* AllocateFieldOffset(size_t size);
			
			template <typename... Args>
				char* ConstructObject(
					void (*Constructor)(char* obj, Args... args),
					Type* typeptr,
					Args... args
				)
			{
				char* obj = AllocateObject(typeptr->size);

				Type** obj_for_type_place = reinterpret_cast<Type**>(obj);

				obj_for_type_place[0] = typeptr;

				Constructor(obj, args...);

				return obj;
			}

			std::set<char*> ExamineRoot(char* root);
			std::set<char*> ExamineRoots(std::set<char*> roots);
			GCResult Collect();
			void InitGCLocalVarRoot(char** stackaddr);
			void InitGCLocalVarEnd(char** stackaddr);

			template <typename ValueType>
			char* Box(ValueType& obj, Type* typeptr)
			{
				Type** boxed = (Type**) AllocateObject(sizeof(Type*)+sizeof(ValueType));

				boxed[0] = typeptr;
				
				ValueType* obj_for_val_place = (ValueType*) (boxed+1);

				obj_for_val_place[0] = obj;

				return (char*) boxed;
			}

			template <typename ValueType>
			ValueType UnBox(char* boxed)
			{
				return *(
					(ValueType*) (
						((Type**) boxed)+1
					)
				);
			}

			void Breakpoint(StaticDebugInfo info);

			Assembly* ResolveAddressToAssembly(void* addr);
			MemberInfo* ResolveAddressToMember(void* addr);
			std::string GetFullyQualifiedNameOf(MemberInfo* type);
			std::string GetDisplayNameOf(MemberInfo* member);
			std::string GetDisplayNameOf(Type* member);
			std::string GetStackTrace(int skipframes);
	};
}

extern ULR::Resolver::ULRAPIImpl* internal_api;