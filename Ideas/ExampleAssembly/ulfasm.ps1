if ($args[0] -eq "debug")
{
	g++ ./ExampleAssembly.cpp -g -D DEBUG=true -c -masm=intel -Wall -Wno-write-strings -std=c++17
}
else
{
	g++ ./ExampleAssembly.cpp  -c -masm=intel -Wno-write-strings -std=c++17
}

g++ -shared ./ExampleAssembly.o ./ULR.NativeLib.dll -o ExampleAssembly.dll
Remove-Item *.o