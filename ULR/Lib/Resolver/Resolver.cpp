#include "../Resolver.hpp"

namespace ULR::Resolver
{
	ULRAPIImpl::ULRAPIImpl(std::map<char*, std::shared_ptr<Assembly>, cmp_chr_ptr>* assemblies)
	{
		this->assemblies = assemblies;
	}

	void* ULRAPIImpl::GetMember(char full_qual_typename[], char name[], char sigmeta[], int flags)
	{
		Type* type = (Type*) GetType(full_qual_typename);

		if (flags & Modifiers::Static)
		{
			if (type->static_attrs.count(name) == 0) throw std::runtime_error("");

			if (strlen(sigmeta) != 0)
			{
				return type->static_attrs[name]->offset;
			}
			else
			{
				std::shared_ptr<MethodInfo> info = std::static_pointer_cast<MethodInfo>(type->static_attrs[name]);
			}
		}
		else
		{
			if (type->inst_attrs.count(name) == 0) throw std::runtime_error("");
			
			if (strlen(sigmeta) != 0)
			{
				return type->inst_attrs[name]->offset;
			}
			else
			{
				std::shared_ptr<MethodInfo> info = std::static_pointer_cast<MethodInfo>(type->inst_attrs[name]);
			}
		}
	}

	void* ULRAPIImpl::GetType(char full_qual_typename[])
	{
		for (auto& entry : *assemblies) // optimize this somehow
		{
			auto& assembly = entry.second;

			if (assembly->types.count(full_qual_typename) != 0) return assembly->types[full_qual_typename].get();
		}
	}

	void* ULRAPIImpl::GetType(char full_qual_typename[], char assembly_hint[])
	{
		if (assemblies->count(assembly_hint) == 0) return nullptr;

		auto& assembly = (*assemblies)[assembly_hint];
		 
		if (assembly->types.count(full_qual_typename) != 0) return assembly->types[full_qual_typename].get();
	}
}