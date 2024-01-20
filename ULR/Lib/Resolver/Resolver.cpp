#include "../Resolver.hpp"

using ULR::API::BindingFlags;

namespace ULR::Resolver
{
	ULRAPIImpl::ULRAPIImpl(std::map<char*, Assembly*, cmp_chr_ptr>* assemblies)
	{
		this->assemblies = assemblies;
	}

	// void** ULRAPIImpl::GetMember(void* Type, char name[], int flags)
	// {
	// 	// Type* type = (Type*) GetType(full_qual_typename);
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

	MethodInfo* ULRAPIImpl::GetMethod(Type* type, char name[], std::vector<Type*> signature, int bindingflags)
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

		throw /* new TypeNotFound exc */;
	}

	Type* ULRAPIImpl::GetType(char full_qual_typename[], char assembly_hint[])
	{
		if (assemblies->count(assembly_hint) == 0) return nullptr;

		auto& assembly = (*assemblies)[assembly_hint];
		 
		if (assembly->types.count(full_qual_typename) != 0) return assembly->types[full_qual_typename];

		throw /* new TypeNotFound exc */;
	}
	
	// NOTE/TODO: THE FOLLOWING METHOD IMPLS DO NOT YET REGISTER ALLOCATED OBJECTS WITH A GC
	// THIS IS IMPORTANT AS THEY RETURN LEAKABLE REFERENCES
	void* ULRAPIImpl::AllocateObject(size_t size)
	{
		return malloc(size);
	}

	void* ULRAPIImpl::AllocateZeroed(size_t size)
	{
		return calloc(size, 1);
	}
}