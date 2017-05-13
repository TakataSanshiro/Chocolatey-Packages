$ErrorActionPreference = 'Stop';

$packageName = 'brave-browser'
$installerType = 'exe'
$silentArgs = '--uninstall --uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\brave\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of Brave at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Local\brave -recurse
Remove-Item $Env:USERPROFILE\AppData\Roaming\brave -recurse
