#include <iostream>
#include <iomanip>

struct ValueType // to work with GC, we will force C$ compiler to add padding itself to align everything to 8/4 bytes
{
	unsigned char bytebuf[11];
};

void func(void* start)
{
	void* end;

	asm(
		"mov %0, rbp\n\t"
		:"=r"(end)
	);

	for (void** addr = &end; addr < start; addr++)
	{
		std::cout << "Value read @ " << addr << ": " << std::hex << std::noshowbase << std::setw(16) << std::setfill('0') << (uint64_t) *addr << std::endl;
	}
}

int main()
{
	char* framebase;

	asm(
		"mov %0, rbp\n\t"
		:"=r"(framebase)
	);

	framebase-=sizeof(char*); // skip "framebase" itself

	char* myvar = (char*) 0x24;
	char* other = (char*) 0x76;
	char* ptr = (char*) 0xDEADBEEF;

	ValueType x;
	((unsigned short*) x.bytebuf)[0] = (unsigned short) 23;
	((void**) (x.bytebuf+2))[0] = (void*) 8;

	(x.bytebuf+10)[0] = 27;
	// (((char*) ((unsigned short*) x.bytebuf)+1)+1)[0] = 8;
	// ((int) (((char*) ((unsigned short*) x.bytebuf)+1)+1))

	char* after = (char*) 123;

	func(framebase);

	return 0;
}