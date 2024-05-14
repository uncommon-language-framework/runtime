#include "StdULR.hpp"

#pragma once

/*
	ULR McL Macro Language
			- -   -

	A set of macros within the ULR Public Library that allow
	compilers and human programmers to write ULR-compatible
	C++ as if it were based on a sort of IL instruction set.

	For example, one could write the following code for the ULR
	using McL:

	```
	...

	CACHE_TYPE CachedProgramType;

	void InitAssembly(ULRAPIImpl* api)
	{
		SET_INTERNAL_API
		LOAD_CACHED_TYPE (CachedProgramType, "[]Program")
	}

	sizeof_System_Int32 overload0_ns0_Program_Main(object args)
	{
		LOCAL(obj, object);

		SET(obj, NEW(overload0_ns0_Program_ctor, CachedProgramType))

		RETURN 0;
	}
	```

*/
#define ULR_McL_INFO