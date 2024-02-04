#include "Assembly.hpp"
#include <set>
#include <vector>

#pragma once

namespace ULR::API
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

	class IULRAPI
	{
		public:
			bool EnsureLoaded(char assembly_name[]);
			Assembly* LoadAssembly(char assembly_name[]);

			std::vector<MemberInfo*> GetMember(Type* type, char name[]);

			ConstructorInfo* GetCtor(Type* type, std::vector<Type*> signature);
			DestructorInfo* GetDtor(Type* type);

			MethodInfo* GetMethod(Type* type, char name[], std::vector<Type*> signature, int bindingflags);
			FieldInfo* GetField(Type* type, char name[], int bindingflags);
			PropertyInfo* GetProperty(Type* type, char name[], int bindingflags);
			
			Type* GetType(char full_qual_typename[]);
			Type* GetType(char full_qual_typename[], char assembly_hint[]);
			Type* GetTypeOf(void* obj);
			
			void* AllocateObject(size_t size);
			void* AllocateZeroed(size_t size);
			void* AllocateObjectNoGC(size_t size);
			void* AllocateZeroedNoGC(size_t size);
			template <typename... Args>
				void* ConstructObject(
					void (*Constructor)(void* obj, Args... args),
					Type* typeptr,
					Args... args
				);

			void RegisterLocal(void* func, void* lcl);
			void UnRegisterLocalScope(void* func);

			std::set<void*> ExamineRoot(void* root);
			std::set<void*> ExamineRoots(std::set<void*> roots);
			GCResult Collect(std::set<void*> locals);

			template <typename ValueType>
				void* Box(ValueType& obj);

			template <typename ValueType>
				ValueType UnBox(void* boxed);
	};
}