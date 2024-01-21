#include "../Resolver.hpp"

using ULR::API::BindingFlags;

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
}