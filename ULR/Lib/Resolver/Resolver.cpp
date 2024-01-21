#include "../Resolver.hpp"

using ULR::API::BindingFlags;

namespace ULR::Resolver
{
	ULRAPIImpl::ULRAPIImpl(std::map<char*, Assembly*, cmp_chr_ptr>* assemblies)
	{
		this->assemblies = assemblies;
	}
}