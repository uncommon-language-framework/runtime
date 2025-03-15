$assembly_info_code = @"
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
	
}

char ulrmeta[] = "pc[]Program:[System]Object,`$8;.ctor p();.entr s[System]Int32 Main([System]String[]);\n";

void* ulraddr[] = {
	(void*) overload0_ns0_Program_ctor,
	(void*) overload0_ns0_Program_Main
};

char* ulrdeps[] = { nullptr };

END_ULR_EXPORT
"@
$script_code = @"
if (`$args[0] -eq "debug")
{
	g++ *.cpp -g -D DEBUG=true -c -masm=intel -Wall -Wno-write-strings -std=c++17
}
else
{
	g++ *.cpp  -c -masm=intel -Wno-write-strings -std=c++17
}

g++ -shared *.o ./ULR.NativeLib.dll -o $($args[0]).dll
Remove-Item *.o
"@

New-Item -ItemType Directory "../Tests/$($args[0])"

Write-Output $assembly_info_code | Out-File "../Tests/$($args[0])/AssemblyInfo.cpp" -Encoding utf8
Write-Output $script_code | Out-File "../Tests/$($args[0])/ulfasm.ps1" -Encoding utf8
