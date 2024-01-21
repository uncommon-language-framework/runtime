#include "Assembly.hpp"
#include "ULRAPI.hpp"
#include <set>

#pragma once

namespace ULR::Resolver
{
	using ULR::API::BindingFlags;

	class ULRAPIImpl : public API::IULRAPI
	{
		std::map<char*, Assembly*, cmp_chr_ptr>* assemblies;
		std::map<char*, Assembly*, cmp_chr_ptr>* read_assemblies;
		Assembly* (*LoadAssemblyPtr)(char name[], ULRAPIImpl* api);
		HMODULE (*ReadAssemblyPtr)(char name[]);

		public:
			std::set<void*> allocated_objs;
			
			ULRAPIImpl(
				std::map<char*, Assembly*, cmp_chr_ptr>* assemblies,
				std::map<char*, Assembly*, cmp_chr_ptr>* read_assemblies,
				HMODULE (*ReadAssembly)(char name[]),
				Assembly* (*LoadAssembly)(char name[], ULRAPIImpl* api)
			);

			// returns true if the assembly is successfully loaded. returns false if the assembly was not read yet (and therefore cannot be loaded)
			bool EnsureLoaded(char assembly_name[])
			{
				if (assemblies->count(assembly_name) == 0)
				{
					if (read_assemblies->count(assembly_name) == 0) return false;

					LoadAssemblyPtr(assembly_name, this);
				}
			}

			Assembly* LoadAssembly(char assembly_name[])
			{
				if (read_assemblies->count(assembly_name))
				{
					if (assemblies->count(assembly_name)) return assemblies->at(assembly_name);

					return LoadAssemblyPtr(assembly_name, this);
				}

				ReadAssemblyPtr(assembly_name);

				return LoadAssemblyPtr(assembly_name, this);
			}

			std::vector<MemberInfo*> GetMember(Type* type, char name[])
			{
				std::vector<MemberInfo*> matches = type->static_attrs[name];

				for (auto& to_add : type->inst_attrs[name])
				{
					matches.emplace_back(to_add);
				}

				return matches;
			}

			ConstructorInfo* GetCtor(Type* type, std::vector<Type*> signature)
			{
				std::vector<MemberInfo*> ctors = type->static_attrs[".ctor"];

				for (auto& ctor : ctors)
				{
					ConstructorInfo* casted = (ConstructorInfo*) ctor;

					if (casted->signature == signature) return casted;
				}
				
				throw /* new NoConstructor exc*/;
			}

			MethodInfo* GetMethod(Type* type, char name[], std::vector<Type*> signature, int bindingflags)
			{
				if (bindingflags & BindingFlags::Instance)
				{
					for (auto& member : type->inst_attrs[name])
					{
						if (member->decl_type & MemberType::Method)
						{
							MethodInfo* casted = (MethodInfo*) member;

							if (casted->signature == signature)
							{
								if (member->attrs & Modifiers::Public && bindingflags & BindingFlags::Public) return casted;
								if (bindingflags & BindingFlags::NonPublic) return casted;
							}
						}
					}
				}

				if (bindingflags & BindingFlags::Static)
				{
					for (auto& member : type->static_attrs[name])
					{
						if (member->decl_type & MemberType::Method)
						{
							MethodInfo* casted = (MethodInfo*) member;

							if (casted->signature == signature)
							{
								if (member->attrs & Modifiers::Public && bindingflags & BindingFlags::Public) return casted;
								if (bindingflags & BindingFlags::NonPublic) return casted;
							}
						}
					}
				}

				throw /* new MethodNotFound exc */;
			}

			FieldInfo* GetField(Type* type, char name[], int bindingflags)
			{
				if (bindingflags & BindingFlags::Instance)
				{
					for (auto& member : type->inst_attrs[name])
					{
						if (member->decl_type & MemberType::Field)
						{
							if (member->attrs & Modifiers::Public && bindingflags & BindingFlags::Public) return (FieldInfo*) member;
							if (bindingflags & BindingFlags::NonPublic) return (FieldInfo*) member;
						}
					}
				}

				if (bindingflags & BindingFlags::Static)
				{
					for (auto& member : type->static_attrs[name])
					{
						if (member->decl_type & MemberType::Field)
						{
							if (member->attrs & Modifiers::Public && bindingflags & BindingFlags::Public) return (FieldInfo*) member;
							if (bindingflags & BindingFlags::NonPublic) return (FieldInfo*) member;
						}
					}
				}

				throw /* new FieldNotFound exc */;		
			}

			PropertyInfo* GetProperty(Type* type, char name[], int bindingflags)
			{
				if (bindingflags & BindingFlags::Instance)
				{
					for (auto& member : type->inst_attrs[name])
					{
						if (member->decl_type & MemberType::Property)
						{
							if (member->attrs & Modifiers::Public && bindingflags & BindingFlags::Public) return (PropertyInfo*) member;
							if (bindingflags & BindingFlags::NonPublic) return (PropertyInfo*) member;
						}
					}
				}

				if (bindingflags & BindingFlags::Static)
				{
					for (auto& member : type->static_attrs[name])
					{
						if (member->decl_type & MemberType::Property)
						{
							if (member->attrs & Modifiers::Public && bindingflags & BindingFlags::Public) return (PropertyInfo*) member;
							if (bindingflags & BindingFlags::NonPublic) return (PropertyInfo*) member;
						}
					}
				}

				throw /* new FieldNotFound exc */;		
			}

			DestructorInfo* GetDtor(Type* type)
			{
				std::vector<MemberInfo*> dtors = type->static_attrs[".dtor"];

				if (dtors.size() == 0) throw /* new NoDestructor exc */;

				return (DestructorInfo*) dtors[0];
			}

			// }
			Type* GetType(char full_qual_typename[])
			{
				for (auto& entry : *assemblies) // optimize this somehow
				{
					auto& assembly = entry.second;

					if (assembly->types.count(full_qual_typename) != 0) return assembly->types[full_qual_typename];
				}

				throw /* new TypeNotFound exc */;
			}

			Type* GetType(char full_qual_typename[], char assembly_hint[])
			{
				if (assemblies->count(assembly_hint) == 0) return nullptr;

				auto& assembly = (*assemblies)[assembly_hint];
				
				if (assembly->types.count(full_qual_typename) != 0) return assembly->types[full_qual_typename];

				throw /* new TypeNotFound exc */;
			}
			
			// NOTE/TODO: THE FOLLOWING METHOD IMPLS DO NOT YET REGISTER ALLOCATED OBJECTS WITH A GC
			// THIS IS IMPORTANT AS THEY RETURN LEAKABLE REFERENCES
			void* AllocateObject(size_t size)
			{
				void* mem = malloc(size);

				allocated_objs.emplace(mem);

				return mem;
			}

			void* AllocateZeroed(size_t size)
			{
				void* mem = calloc(size, 1);

				allocated_objs.emplace(mem);
				
				return mem;
			}
	};
}