g++ ExternalLib.cpp -c
g++ ExternalLib.o -shared -o ExternalLib.dll

Remove-Item ExternalLib.o
Copy-Item ExternalLib.dll ../../ULR/ExternalLib.dll