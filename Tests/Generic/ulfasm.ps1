if ($args[0] -eq "debug")
{
	g++ *.cpp -g -D DEBUG=true -c -masm=intel -Wall -Wno-write-strings -std=c++17
}
else
{
	g++ *.cpp  -c -masm=intel -Wno-write-strings -std=c++17
}

g++ -shared *.o ./ULR.NativeLib.dll -o Generic.dll
Remove-Item *.o
