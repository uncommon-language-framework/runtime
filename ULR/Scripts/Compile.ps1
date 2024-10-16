$cacheObj = Get-Content -raw ObjCache/Cache | ConvertFrom-Json
$cache = @{}

$dbgCacheObj = Get-Content -raw ObjCache/DbgCache | ConvertFrom-Json
$dbgCache = @{}

foreach ($prop in $cacheObj.PSObject.Properties)
{
	$cache[$prop.Name] = $prop.Value;
}

foreach ($prop in $dbgCacheObj.PSObject.Properties)
{
	$dbgCache[$prop.Name] = $prop.Value;
}

$debug = $args[1] -eq "debug"

function IsCachedOrStoreIfNot($file) 
{
	$hash = (Get-FileHash $file -Algorithm MD5).Hash

	if ($debug)
	{
		if ($dbgCache.Contains($file) -and ($dbgCache[$file] -eq $hash))
		{
			return 1;
		}
	
		$dbgCache[$file] = $hash;

		return 0;
	}


	if ($cache.Contains($file) -and ($cache[$file] -eq $hash))
	{
		return 1;
	}

	$cache[$file] = $hash;

	return 0;
}

$libfiles = [System.Collections.Generic.List[string]]::new()
$winlibs = "-lole32", "-luuid", "-ldbghelp"

foreach ($item in Get-ChildItem ./Lib -File -Recurse)
{
	if ($item.FullName.Contains("Loader")) { continue; }

	if ($item.FullName.EndsWith(".cpp") -and ((IsCachedOrStoreIfNot($item.FullName)) -eq 0)) { $libfiles.Add($item.FullName) }
}

if ($args[2] -ne "nolib")
{
	if ($debug)
	{
		g++64 $libfiles -c -masm=intel -O0 -Wall -g -D DEBUG=true -Wno-write-strings -std=c++17
	}
	else
	{
		g++64 $libfiles -c -masm=intel -Wno-write-strings -std=c++17 
	}

	if ($debug)
	{
		Move-Item *.o ObjCache/LibDbgObj -Force
	
		g++64 -shared -o "ULR.NativeLib.dll" ObjCache/LibDbgObj/*.o $winlibs
	}
	else
	{
		Move-Item *.o ObjCache/LibObj -Force
	
		g++64 -shared -o "ULR.NativeLib.dll" ObjCache/LibObj/*.o $winlibs
	}
}


Copy-Item "ULR.NativeLib.dll" "$($args[0])/ULR.NativeLib.dll"
Copy-Item "ULR.NativeLib.dll" "../../ulflib/src/native/ULR.NativeLib.dll"
Copy-Item "ULR.NativeLib.dll" "../../uld/src/uld/ULR.NativeLib.dll"

if  ($args[2] -ne "libonly")
{
	if ($debug)
	{
		if ((IsCachedOrStoreIfNot((Get-Item "ulrhost.cpp").FullName)) -eq 0) { g++64 "ulrhost.cpp" -c -masm=intel -O0 -Wall -g -D DEBUG=true -Wno-write-strings -std=c++17 -ldbghelp }
		if ((IsCachedOrStoreIfNot((Get-Item "Lib/Loader/Loader.cpp").FullName)) -eq 0) { g++64 "Lib/Loader/Loader.cpp" -c -masm=intel -O0 -Wall -g -D DEBUG=true -Wno-write-strings -std=c++17 -ldbghelp }
		
		Move-Item *.o ObjCache/DbgObj -Force

		g++64 "ObjCache/DbgObj/ulrhost.o" "ULR.NativeLib.dll" "ObjCache/DbgObj/Loader.o" -o "ULR.Hosting.dll" -shared -masm=intel -Wno-write-strings -std=c++17 -ldbghelp
	}
	else
	{
		if ((IsCachedOrStoreIfNot((Get-Item "ulrhost.cpp").FullName)) -eq 0) { g++64 "ulrhost.cpp" -c -masm=intel -Wno-write-strings -std=c++17 -ldbghelp }
		if ((IsCachedOrStoreIfNot((Get-Item "Lib/Loader/Loader.cpp").FullName)) -eq 0) { g++64 "Lib/Loader/Loader.cpp" -c -masm=intel -Wno-write-strings -std=c++17 -ldbghelp }

		Move-Item *.o ObjCache/Obj -Force

		g++64 "ObjCache/Obj/ulrhost.o" "ULR.NativeLib.dll" "ObjCache/Obj/Loader.o" -o "ULR.Hosting.dll" -shared -masm=intel -Wno-write-strings -std=c++17 -ldbghelp
	}
}


if ($debug)
{
	$dbgCache | ConvertTo-Json | Out-File -FilePath ObjCache/DbgCache
}
else 
{
	$cache | ConvertTo-Json | Out-File -FilePath ObjCache/Cache
}