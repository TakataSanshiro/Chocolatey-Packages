$ErrorActionPreference = 'Stop';

$packageName = 'boostnote'
$installerType = 'exe'
$silentArgs = '--uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\boost\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of BoostNote at $Env:USERPROFILE\AppData\Local\boost
# Doesn't delete user's .json and .cson note data.
Remove-Item $Env:USERPROFILE\AppData\Local\boost -recurse
