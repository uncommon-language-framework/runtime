g++64 .\ExampleAssembly.cpp -c
g++64 -shared .\ExampleAssembly.o -o ExampleAssembly.dll
Remove-Item ExampleAssembly.o