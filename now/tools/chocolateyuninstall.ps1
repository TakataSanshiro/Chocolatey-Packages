$ErrorActionPreference = 'Stop';

$packageName = 'now' 
$installerType = 'exe' 
$silentArgs = '--uninstall -s' 
$validExitCodes = @(0) 
$file = "$Env:USERPROFILE\AppData\Local\now\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"

# Delete junk files of now at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Local\now -recurse
Remove-Item $Env:USERPROFILE\AppData\Roaming\Now -recurse

