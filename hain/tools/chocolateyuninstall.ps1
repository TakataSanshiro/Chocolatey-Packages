$ErrorActionPreference = 'Stop';

$packageName = 'hain'
$installerType = 'exe'
$silentArgs = '--uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\hain\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of hain at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Local\hain -recurse
Remove-Item $Env:USERPROFILE\AppData\Roaming\hain -recurse
