#include "Assembly.hpp"
#include "ULRAPI.hpp"
#include <algorithm>

#define TWO_GB 1000000000

#pragma once

namespace ULR::Resolver
{
	using ULR::API::BindingFlags;
	using ULR::API::GCResult;

	class ULRAPIImpl : public API::IULRAPI
	{
		std::map<char*, Assembly*, cmp_chr_ptr>* assemblies;
		std::map<char*, Assembly*, cmp_chr_ptr>* read_assemblies;
		Assembly* (*LoadAssemblyPtr)(char name[], ULRAPIImpl* api);
		HMODULE (*ReadAssemblyPtr)(char name[]);

		std::map<void*, size_t> allocated_objs;
		size_t allocated_size = 0;
		std::map<void*, std::vector<void*>> registered_locals;

		public:
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

				return true;
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

				/* try to load assemblies until type is found */
				for (auto& entry : *read_assemblies)
				{
					if (assemblies->count(entry.first)) continue;

					if (!EnsureLoaded(entry.first)) continue;

					if (entry.second->types.count(full_qual_typename) != 0) return entry.second->types[full_qual_typename];
				}

				throw /* new TypeNotFound exc */;
			}

			Type* GetType(char full_qual_typename[], char assembly_hint[])
			{
				if (!EnsureLoaded(assembly_hint)) throw /* new TypeNotFound exc */;

				auto& assembly = (*assemblies)[assembly_hint];
				
				if (assembly->types.count(full_qual_typename) != 0) return assembly->types[full_qual_typename];

				throw /* new TypeNotFound exc */;
			}

			Type* GetTypeOf(void* obj)
			{
				Type** type_ptr_extract = reinterpret_cast<Type**>(obj);

				return type_ptr_extract[0];
			}
			
			void* AllocateObject(size_t size)
			{
				if (allocated_size+size > TWO_GB) Collect();

				return AllocateObjectNoGC(size);
			}

			void* AllocateZeroed(size_t size)
			{
				if (allocated_size+size > TWO_GB) Collect();

				return AllocateZeroedNoGC(size);
			}

			void* AllocateObjectNoGC(size_t size)
			{
				void* mem = malloc(size);

				allocated_objs.emplace(mem, size);

				allocated_size+=size;

				return mem;
			}

			void* AllocateZeroedNoGC(size_t size)
			{
				void* mem = calloc(size, 1);

				allocated_objs.emplace(mem, size);

				allocated_size+=size;
				
				return mem;
			}


			template <typename... Args> void* ConstructObject(size_t size, void (*Constructor)(void* obj, Args... args), Args... args)
			{
				void* obj = AllocateObject(size);

				Constructor(obj, args);

				return obj;
			}

			void RegisterLocal(void* func, void* lcl)
			{
				registered_locals[func].emplace_back(lcl);
			}

			void UnRegisterLocalScope(void* func)
			{
				registered_locals[func].clear();
			}

			std::set<void*> ExamineRoot(void* root)
			{
				std::set<void*> found = { root };

				Type* root_type = GetTypeOf(root);

				for (auto& entry : root_type->inst_attrs)
				{
					if (entry.second[0]->decl_type == MemberType::Field)
					{
						FieldInfo* field = (FieldInfo*) entry.second[0];

						if (found.count(field)) continue; // prevent circular refs

						auto found_from_field = ExamineRoot(field);

						found.insert(found_from_field.begin(), found_from_field.end());	
					}
				}

				return found;
			}

			std::set<void*> ExamineRoots(std::set<void*> roots)
			{
				std::set<void*> total;

				for (auto& root : roots)
				{
					if (total.count(root)) continue; // prevent circular refs

					auto found = ExamineRoot(root);

					total.insert(found.begin(), found.end());	
				}

				return total;
			}

			GCResult Collect()
			{
				std::set<void*> locals; // aggregate a list of all registered locals

				for (auto& entry : registered_locals)
				{
					locals.insert(entry.second.begin(), entry.second.end());
				}

				// add static roots to local var roots
				for (auto& entry : *assemblies)
				{
					for (auto& type_entry : entry.second->types)
					{
						for (auto& static_entry : type_entry.second->static_attrs)
						{
							if (static_entry.second[0]->decl_type == MemberType::Field)
							{
								locals.emplace(((FieldInfo*) static_entry.second[0])->offset);
							}
						}
					}
				}

				std::set<void*> still_accessible = ExamineRoots(locals);

				GCResult result;

				auto alloced_copy = allocated_objs;

				for (auto& entry : alloced_copy)
				{
					auto& alloced = entry.first;

					if (!still_accessible.count(alloced))
					{
						result.num_collected++;
						result.size_collected+=entry.second;

						Type* objtype = GetTypeOf(alloced);

						GetDtor(objtype)->Invoke(std::vector<void*>()); // call destructor

						free(alloced);

						allocated_objs.erase(alloced);
					}
				}

				allocated_size-=result.size_collected;

				return result;
			}
	};
}