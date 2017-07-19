$ErrorActionPreference = 'Stop';

$packageName = 'nylas' 
$installerType = 'exe' 
$silentArgs = '--uninstall -s' 
$validExitCodes = @(0) 
$file = "$Env:USERPROFILE\AppData\Local\NylasMail\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"

# Delete junk files of NylasMail at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Local\NylasMail -recurse
Remove-Item $Env:USERPROFILE\AppData\Roaming\NylasMail -recurse
