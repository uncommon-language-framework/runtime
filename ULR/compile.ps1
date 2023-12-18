$libfiles = [System.Collections.Generic.List[string]]::new()

foreach ($item in Get-ChildItem ./Lib -File -Recurse)
{
	if ($item.FullName.EndsWith(".cpp")) { $libfiles.Add($item.FullName) }
}

if ($args[0] -eq "debug")
{
	g++ ulrhost.cpp $libfiles -o ulrhost.exe -Wall -g -D DEBUG=true
}
else
{
	g++ ulrhost.cpp $libfiles -o ulrhost.exe
}