$ErrorActionPreference = 'Stop';

$packageName = '1clipboard'
$installerType = 'exe'
$silentArgs = '--uninstall --uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\1clipboard\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of Brave at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Local\1clipboard -recurse
Remove-Item $Env:USERPROFILE\AppData\Roaming\1clipboard -recurse
