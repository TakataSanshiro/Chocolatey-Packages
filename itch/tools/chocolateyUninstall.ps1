$ErrorActionPreference = 'Stop';

$packageName = 'itch' 
$installerType = 'exe' 
$silentArgs = '--uninstall -s' 
$validExitCodes = @(0) 
$file = "$Env:USERPROFILE\AppData\Local\itch\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
