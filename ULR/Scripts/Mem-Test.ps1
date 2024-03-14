Scripts/compile "../Tests/$($args[0])" "debug"

$prev = Get-Location

Set-Location "../Tests/$($args[0])"

./ulfasm "debug"

Set-Location $prev

drmemory ./ulrhost.exe "../Tests/$($args[0])/$($args[0]).dll"