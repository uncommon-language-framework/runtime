if ($args[0] -eq "debug")
{
	g++64 ./ExampleAssembly.cpp -g -D DEBUG=true -c -masm=intel -Wall -Wno-write-strings
}
else
{
	g++64 ./ExampleAssembly.cpp  -c -masm=intel -Wno-write-strings
}

g++64 -shared ./ExampleAssembly.o ./ULR.NativeLib.dll -o ExampleAssembly.dll
Remove-Item *.o