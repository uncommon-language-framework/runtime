g++ .\ExampleAssembly.cpp -c
g++ -shared .\ExampleAssembly.o -o ExampleAssembly.dll
Remove-Item ExampleAssembly.o