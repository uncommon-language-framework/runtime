#include "../Resolver.hpp"

namespace ULR::Resolver
{
	ULRAPIImpl::ULRAPIImpl(std::map<char*, Assembly*, cmp_chr_ptr>* assemblies)
	{
		this->assemblies = assemblies;
	}

	void** ULRAPIImpl::GetMember(char full_qual_typename[], char name[], int flags)
	{
		Type* type = (Type*) GetType(full_qual_typename);


	}

	void** ULRAPIImpl::GetType(char full_qual_typename[])
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