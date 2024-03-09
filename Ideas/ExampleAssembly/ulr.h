#include <memory>

namespace ULR
{
	enum MethodFlags
	{
		STATIC = 1,
		PUBLIC = 2,
		CTOR = -1
	};

	class ULRAPI
	{
		public:
			virtual void* GetMethod(char ns[], char type[], char name[], char sig[], int flags) = 0;
			virtual size_t GetSizeOf(char ns[], char type[]) = 0;
	};
}