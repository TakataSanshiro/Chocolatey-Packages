$ErrorActionPreference = 'Stop';

$packageName = 'caret'
$installerType = 'exe'
$silentArgs = '--uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\Caret\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"

# Delete junk files of Caret at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Local\Caret -recurse
Remove-Item $Env:USERPROFILE\AppData\Roaming\Caret -recurse
