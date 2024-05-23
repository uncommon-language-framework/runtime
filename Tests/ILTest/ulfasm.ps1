if ($args[0] -eq "debug")
{
	g++64 *.cpp -g -D DEBUG=true -c -masm=intel -Wall -Wno-write-strings -std=c++17
}
else
{
	g++64 *.cpp  -c -masm=intel -Wno-write-strings -std=c++17
}

g++64 -shared *.o ./ULR.NativeLib.dll -o ILTest.dll
Remove-Item *.o
