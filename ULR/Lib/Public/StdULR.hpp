#define __ULR_MANAGED

#include "../Assembly.hpp"
#include "../ULRAPI.hpp"
#include "../Resolver.hpp"

#pragma once

using ULR::Resolver::ULRAPIImpl;

/*
	This file includes the headers necessary for full ULR interaction. All ULR compilations should
	include this header and accept a ULRAPIImpl* instance as an argument to their InitAssembly function.
*/