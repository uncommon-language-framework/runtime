g++64 ExternalLib.cpp -c
g++64 ExternalLib.o -shared -o ExternalLib.dll

Remove-Item ExternalLib.o
Copy-Item ExternalLib.dll ../../ULR/ExternalLib.dll