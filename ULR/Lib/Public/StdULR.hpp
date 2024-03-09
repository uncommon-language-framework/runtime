#define __ULR_MANAGED
#define ULR_EXPORT extern "C"
#define BEGIN_ULR_EXPORT ULR_EXPORT {
#define END_ULR_EXPORT }

#include "../Assembly.hpp"
#include "../Resolver.hpp"

#pragma once

using ULR::Type;
using ULR::Assembly;
using namespace ULR::Resolver;


// Define native types according to ULR naming convention

using sizeof_ns1_System_SByte = uint8_t;
using sizeof_ns1_System_Byte = uint8_t;
using sizeof_ns1_System_Int16 = int16_t;
using sizeof_ns1_System_UInt16 = uint16_t;
using sizeof_ns1_System_Int32 = int32_t;
using sizeof_ns1_System_UInt32 = uint32_t;
using sizeof_ns1_System_Int64 = int64_t;
using sizeof_ns1_System_UInt64 = uint64_t;
using sizeof_ns1_System_Char = char;
using sizeof_ns1_System_Boolean = bool;

// End native type definition

/*
	This file includes the headers necessary for full ULR interaction. All ULR compilations should
	include this header and accept a ULRAPIImpl* instance as an argument to their InitAssembly function.
*/