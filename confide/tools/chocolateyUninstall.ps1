$ErrorActionPreference = 'Stop';

$packageName = 'confide' 
$installerType = 'exe' 
$silentArgs = '--uninstall -s' 
$validExitCodes = @(0) 
$file = "$Env:USERPROFILE\AppData\Local\Confide\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of Confide at $Env:USERPROFILE\AppData\Local\Confide
Remove-Item $Env:USERPROFILE\AppData\Local\Confide -recurse
