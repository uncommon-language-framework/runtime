#include <cstddef>

namespace ULR::API
{
	class IULRAPI
	{
		public:
			virtual void* GetMember(char full_qual_typename[], char name[], char sigmeta[], int flags) = 0;
			virtual void* GetMember(char full_qual_typename[], char name[], char sigmeta[], int flags, char assembly_hint[]) = 0;
			virtual void* GetType(char full_qual_typename[]) = 0;
			virtual void* GetType(char full_qual_typename[], char assembly_hint[]) = 0;
			virtual void* AllocateObject(size_t size) = 0;
			virtual void* AllocateZeroed(size_t size) = 0;
			virtual size_t GetSizeOf(char full_qual_typename[]) = 0;
			virtual size_t GetSizeOf(char full_qual_typename[], char assembly_hint[]) = 0;
	};
}