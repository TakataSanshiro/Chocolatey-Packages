$ErrorActionPreference = 'Stop';

$packageName = 'flow' 
$installerType = 'exe' 
$silentArgs = '--uninstall -s' 
$validExitCodes = @(0) 
$file = "$Env:USERPROFILE\AppData\Local\Flow\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"

# Delete junk files of Flow at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Local\Flow -recurse
Remove-Item $Env:USERPROFILE\AppData\Roaming\Flow -recurse
