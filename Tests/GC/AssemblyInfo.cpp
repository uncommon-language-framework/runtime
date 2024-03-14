#define TEST(condition, num) if (condition) std::cout << "+ Test " << num << " passed!\n"; else std::cout << "- Test " << num << " failed :(\n";

#include <StdULR.hpp>
#include <iostream>

BEGIN_ULR_EXPORT

void InitAssembly(ULRAPIImpl* ulr)
{
	internal_api = ulr;
}

void overload0_ns0_Program_ctor(char* self) {}

sizeof_ns1_System_Int32 overload0_ns0_Program_Main(char* argv)
{
	char* framebase;

	asm(
		"mov %0, rbp\n\t"
		:"=r"(framebase)
	);

	framebase-=sizeof(char*); // skip all "framebase" itself;

	internal_api->InitGCLocalVarRoot((char**) framebase);

	char* obj;

	for (size_t i = 0; i < 200; i++) 
	{
		// allocate 200 10 MB objects to trigger the GC (see metadata -- global::Program is declared with a size of 10000000 B (10 MB))
		obj = internal_api->ConstructObject(overload0_ns0_Program_ctor, internal_api->GetType("[]Program", "GC.dll"));
	}

	// the object should still be accessible at the end

	GCResult gcres = internal_api->last_gc_result;
	
	// only 198 objects would be collected because the GC would trigger just before the 200th allocation (1990mb+10mb >= GC_TRIGGER_SIZE) -> 
	//this means that the 199th object would still be accessible and not collected; the 200th object would not have been created yet
	TEST(gcres.num_collected == 198, 1); 
	TEST(gcres.size_collected == 10000000*198, 2);

	*obj = 'a';

	TEST(true, 3);

	return 0;
}

char ulrmeta[] = "pc[]Program:[System]Object,$10000000;.ctor p();.entr s[System]Int32 Main([System]String[]);\n";

void* ulraddr[] = {
	(void*) overload0_ns0_Program_ctor,
	(void*) overload0_ns0_Program_Main
};

END_ULR_EXPORT
