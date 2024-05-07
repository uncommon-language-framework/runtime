if ($args[0].ToLower() -in ("test", "run"))
{ Scripts/Run-Test $args[1] $args[2] }

if ($args[0].ToLower() -in ("new", "create"))
{ Scripts/New-Test $args[1] $args[2] }

if ($args[0].ToLower() -in ("remove", "del"))
{ Scripts/Del-Test $args[1] $args[2] }

if ($args[0].ToLower() -in ("debug", "dbg"))
{ Scripts/Debug-Test $args[1] $args[2] }

if ($args[0].ToLower() -in ("memcheck", "mem"))
{ Scripts/Mem-Test $args[1] $args[2] }