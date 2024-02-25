#include "Assembly.hpp"
#include <algorithm>
#include <iostream>
#include <type_traits>
#include <set>

#define MB *1000000
#define GB *(1000 MB)
#define MAX_OBJ_SIZE 1 GB
#define GC_TRIGGER_SIZE 2 GB
#define MAX_TRACEBACK 20

#pragma once

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
			size_t size_collected;
			size_t num_collected;
	};

	class ULRAPIImpl
	{
		std::map<char*, Assembly*, cmp_chr_ptr>* assemblies;
		std::map<char*, Assembly*, cmp_chr_ptr>* read_assemblies;
		Assembly* (*LoadAssemblyPtr)(char name[], ULRAPIImpl* api);
		HMODULE (*ReadAssemblyPtr)(char name[]);

		size_t prev_size_accessible = 0;

		public:
			std::map<char*, size_t> allocated_objs;
			size_t allocated_size = 0;

			ULRAPIImpl(
				std::map<char*, Assembly*, cmp_chr_ptr>* assemblies,
				std::map<char*, Assembly*, cmp_chr_ptr>* read_assemblies,
				HMODULE (*ReadAssembly)(char name[]),
				Assembly* (*LoadAssembly)(char name[], ULRAPIImpl* api)
			);

			bool EnsureLoaded(char assembly_name[]);
			Assembly* LoadAssembly(char assembly_name[]);
			Assembly* LocateAssembly(char assembly_name[]);
			void* LocateSymbol(Assembly* assembly, char symbol_name[]);

			std::vector<MemberInfo*> GetMember(Type* type, char name[]);

			ConstructorInfo* GetCtor(Type* type, std::vector<Type*> signature);
			DestructorInfo* GetDtor(Type* type);

			MethodInfo* GetMethod(Type* type, char name[], std::vector<Type*> argsignature, int bindingflags);
			FieldInfo* GetField(Type* type, char name[], int bindingflags);
			PropertyInfo* GetProperty(Type* type, char name[], int bindingflags);
			
			Type* GetType(char full_qual_typename[]);
			Type* GetType(char full_qual_typename[], char assembly_hint[]);
			Type* GetTypeOf(char* obj);
			
			char* AllocateObject(size_t size);
			char* AllocateZeroed(size_t size);
			char* AllocateObjectNoGC(size_t size);
			char* AllocateZeroedNoGC(size_t size);
			
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

			MemberInfo* ResolveAddressToMember(void* addr);
			std::string GetFullyQualifiedNameOf(MemberInfo* type);
			std::string GetDisplayNameOf(MemberInfo* member);
			std::string GetDisplayNameOf(Type* member);
			std::string GetStackTrace(int skipframes);
	};
}

extern ULR::Resolver::ULRAPIImpl* internal_api;