if ($args[0].ToLower() -in ("test", "run"))
{ Scripts/Run-Test $args[1] }

if ($args[0].ToLower() -in ("new", "create"))
{ Scripts/New-Test $args[1] }

if ($args[0].ToLower() -in ("remove", "del"))
{ Scripts/Del-Test $args[1] }