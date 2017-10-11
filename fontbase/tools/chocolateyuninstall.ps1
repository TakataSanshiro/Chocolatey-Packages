$ErrorActionPreference = 'Stop';

$packageName = 'fontbase'
$installerType = 'exe'
$silentArgs = '--uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\FontBase\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"

# Delete junk files of fontbase at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Local\FontBase -recurse
Remove-Item "$Env:USERPROFILE\AppData\Roaming\FontBase" -recurse