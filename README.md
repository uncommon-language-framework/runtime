# Uncommon Language Framework Runtime (Uncommon Language Runtime/ULR)

This repository contains the source code for the ULR (Uncommon Language Runtime) and the ULR Loader, which allows all ULF applications to run.

The ULR Main Libraries are found in [`ULR/Lib`](ULR/Lib/), the Public Library (included with every C++ ULF compilation) is located in the header [`ULR/Lib/Public/StdULR.hpp`](ULR/Lib/Public/StdULR.hpp). Example assemblies/future ideas are found in [`Ideas-Tests`](Ideas-Tests). The source for the `ulrhost` executable, which loads and executes a ULR assembly, is found in [`ULR/ulrhost.cpp`](ULR/ulrhost.cpp).