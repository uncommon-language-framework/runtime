$libfiles = [System.Collections.Generic.List[string]]::new()
$llvmlibs = (llvm-config --libs).Split()
$llvmlibsdir = "-L$(llvm-config --libdir)"
$winlibs = "-lole32", "-luuid", "-ldbghelp"

foreach ($item in Get-ChildItem ./Lib -File -Recurse)
{
	if ($item.FullName.Contains("Loader\")) { continue; }

	if ($item.FullName.EndsWith(".cpp")) { $libfiles.Add($item.FullName) }
}

if ($args[0] -ne "nolib")
{
	if ($args[0] -eq "debug")
	{
		g++64 $libfiles -c -masm=intel -O0 -Wall -g -D DEBUG=true -Wno-write-strings -std=c++17
	}
	else
	{
		g++64 $libfiles -c -masm=intel -Wno-write-strings -std=c++17 
	}

	g++64 -shared -o "ULR.NativeLib.dll" *.o $llvmlibsdir $llvmlibs $winlibs
}


Remove-Item *.o
Copy-Item "ULR.NativeLib.dll" "../Ideas-Tests/ULR.NativeLib.dll"
Copy-Item "ULR.NativeLib.dll" "../../ulflib/src/native/ULR.NativeLib.dll"

if ($args[0] -eq "debug")
{
	g++64 "ulrhost.cpp" "ULR.NativeLib.dll" "Lib/Loader/Loader.cpp" -o ulrhost.exe -masm=intel -O0 -Wall -g -D DEBUG=true -Wno-write-strings -std=c++17 -ldbghelp
}
else
{
	g++64 "ulrhost.cpp" "ULR.NativeLib.dll" "Lib/Loader/Loader.cpp" -o ulrhost.exe -masm=intel -Wno-write-strings -std=c++17 -ldbghelp
}
