#include "../Resolver.hpp"

namespace ULR::Resolver
{
	ULRAPIImpl::ULRAPIImpl(
		std::map<char*, Assembly*, cmp_chr_ptr>* assemblies,
		std::map<char*, Assembly*, cmp_chr_ptr>* read_assemblies,
		HMODULE (*ReadAssembly)(char name[]),
		Assembly* (*LoadAssembly)(char name[], ULRAPIImpl* api)
	)
	{
		this->assemblies = assemblies;
		this->read_assemblies = read_assemblies;
		this->LoadAssemblyPtr = LoadAssembly;
		this->ReadAssemblyPtr = ReadAssembly;
	}

	// returns true if the assembly is successfully loaded. returns false if the assembly was not read yet (and therefore cannot be loaded). If the assembly was read but not loaded, this function loads the assembly fully and returns true
	bool ULRAPIImpl::EnsureLoaded(char assembly_name[])
	{
		if (assemblies->count(assembly_name) == 0)
		{
			if (read_assemblies->count(assembly_name) == 0) return false;

			LoadAssemblyPtr(assembly_name, this);
		}

		return true;
	}

	Assembly* ULRAPIImpl::LoadAssembly(char assembly_name[])
	{
		if (read_assemblies->count(assembly_name))
		{
			if (assemblies->count(assembly_name)) return assemblies->at(assembly_name);

			return LoadAssemblyPtr(assembly_name, this);
		}

		ReadAssemblyPtr(assembly_name);

		return LoadAssemblyPtr(assembly_name, this);
	}

	std::vector<MemberInfo*> ULRAPIImpl::GetMember(Type* type, char name[])
	{
		std::vector<MemberInfo*> matches = type->static_attrs[name];

		for (auto& to_add : type->inst_attrs[name])
		{
			matches.emplace_back(to_add);
		}

		return matches;
	}

	ConstructorInfo* ULRAPIImpl::GetCtor(Type* type, std::vector<Type*> signature)
	{
		std::vector<MemberInfo*> ctors = type->static_attrs[".ctor"];

		for (auto& ctor : ctors)
		{
			ConstructorInfo* casted = (ConstructorInfo*) ctor;

			if (casted->signature == signature) return casted;
		}
		
		throw /* new NoConstructor exc*/;
	}

	MethodInfo* ULRAPIImpl::GetMethod(Type* type, char name[], std::vector<Type*> argsignature, int bindingflags)
	{
		if (bindingflags & BindingFlags::Instance)
		{
			for (auto& member : type->inst_attrs[name])
			{
				if (member->decl_type & MemberType::Method)
				{
					MethodInfo* casted = (MethodInfo*) member;

					if (casted->argsig == argsignature)
					{
						if (member->attrs & Modifiers::Public)
						{
							if(bindingflags & BindingFlags::Public) return casted;
						}
						else if (bindingflags & BindingFlags::NonPublic) return casted;
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

					if (casted->argsig == argsignature)
					{
						if (member->attrs & Modifiers::Public)
						{
							if(bindingflags & BindingFlags::Public) return casted;
						}
						else if (bindingflags & BindingFlags::NonPublic) return casted;
					}
				}
			}
		}

		throw /* new MethodNotFound exc */;
	}

	FieldInfo* ULRAPIImpl::GetField(Type* type, char name[], int bindingflags)
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

	PropertyInfo* ULRAPIImpl::GetProperty(Type* type, char name[], int bindingflags)
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

	DestructorInfo* ULRAPIImpl::GetDtor(Type* type)
	{
		std::vector<MemberInfo*> dtors = type->static_attrs[".dtor"];

		if (dtors.size() == 0) throw /* new NoDestructor exc */;

		return (DestructorInfo*) dtors[0];
	}

	// }
	Type* ULRAPIImpl::GetType(char full_qual_typename[])
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

	Type* ULRAPIImpl::GetType(char full_qual_typename[], char assembly_hint[])
	{
		if (read_assemblies->count(assembly_hint) == 0 && assemblies->count(assembly_hint)) throw std::runtime_error("first fault") /* new TypeNotFound exc */;

		auto& assembly = (*assemblies)[assembly_hint];
		
		if (assembly->types.count(full_qual_typename) != 0) return assembly->types[full_qual_typename];

		throw std::runtime_error("second fault") /* new TypeNotFound exc */;
	}

	Type* ULRAPIImpl::GetTypeOf(void* obj)
	{
		Type** type_ptr_extract = reinterpret_cast<Type**>(obj);

		return type_ptr_extract[0];
	}
	
	void* ULRAPIImpl::AllocateObject(size_t size)
	{
		if (allocated_size+size > GC_TRIGGER_SIZE && ((allocated_size+size) - prev_size_accessible) > 10 MB) Collect();

		return AllocateObjectNoGC(size);
	}

	void* ULRAPIImpl::AllocateZeroed(size_t size)
	{
		if (allocated_size+size > GC_TRIGGER_SIZE && ((allocated_size+size) - prev_size_accessible) > 10 MB) Collect();

		return AllocateZeroedNoGC(size);
	}

	void* ULRAPIImpl::AllocateObjectNoGC(size_t size)
	{
		void* mem = malloc(size);

		allocated_objs.emplace(mem, size);

		allocated_size+=size;

		return mem;
	}

	void* ULRAPIImpl::AllocateZeroedNoGC(size_t size)
	{
		void* mem = calloc(size, 1);

		allocated_objs.emplace(mem, size);

		allocated_size+=size;
		
		return mem;
	}

	std::set<void*> ULRAPIImpl::ExamineRoot(void* root)
	{
		std::set<void*> found = { root };

		Type* root_type = GetTypeOf(root);

		for (auto& entry : root_type->inst_attrs)
		{
			if (entry.second[0]->decl_type == MemberType::Field)
			{
				FieldInfo* field = (FieldInfo*) entry.second[0];

				void* fieldval = field->GetValue(root);

				if (found.count(fieldval)) continue; // prevent circular refs

				auto found_from_field = ExamineRoot(fieldval);

				found.insert(found_from_field.begin(), found_from_field.end());	
			}
		}

		return found;
	}

	std::set<void*> ULRAPIImpl::ExamineRoots(std::set<void*> roots)
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

	GCResult ULRAPIImpl::Collect()
	{
		std::set<void*> roots; // aggregate a list of all registered locals

		for (auto& entry : *assemblies)
		{
			// NOTE: BELOW IS BROKEN FOR VALUE TYPES, TODO: FIX
			// add local var addrs to roots
			for (size_t i = 0; i < entry.second->localslen; i++)
			{
				void* lcladdr = entry.second->locals[i];

				if (lcladdr == nullptr) continue;

				roots.emplace(lcladdr); // add the local var to the application root
			}

			// add static roots to local var roots
			for (auto& type_entry : entry.second->types)
			{
				for (auto& static_entry : type_entry.second->static_attrs)
				{
					if (static_entry.second[0]->decl_type == MemberType::Field)
					{
						roots.emplace(((FieldInfo*) static_entry.second[0])->offset);
					}
				}
			}
		}

		std::set<void*> still_accessible = ExamineRoots(roots);

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

				GetDtor(objtype)->Invoke(alloced); // call destructor

				free(alloced);

				allocated_objs.erase(alloced);
			}
		}

		allocated_size-=result.size_collected;

		prev_size_accessible = allocated_size;

		return result;
	}
}