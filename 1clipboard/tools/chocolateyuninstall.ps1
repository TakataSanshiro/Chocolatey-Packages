$ErrorActionPreference = 'Stop';

$packageName = '1clipboard'
$installerType = 'exe'
$silentArgs = '--uninstall --uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\1Clipboard\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of 1Clipboard at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Local\1Clipboard -recurse
Remove-Item $Env:USERPROFILE\AppData\Roaming\1Clipboard -recurse
