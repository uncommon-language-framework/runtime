$libfiles = [System.Collections.Generic.List[string]]::new()

foreach ($item in Get-ChildItem ./Lib -File -Recurse)
{
	if ($item.FullName.Contains("Public")) { continue }
	
	if ($item.FullName.EndsWith(".cpp")) { $libfiles.Add($item.FullName) }
}

if ($args[0] -eq "debug")
{
	g++64 ulrhost.cpp $libfiles -o ulrhost.exe -masm=intel -O0 -Wall -g -D DEBUG=true -Wno-write-strings -std=c++17
}
else
{
	g++64 ulrhost.cpp $libfiles -o ulrhost.exe -masm=intel -Wno-write-strings -std=c++17
}