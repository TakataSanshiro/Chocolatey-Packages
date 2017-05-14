$ErrorActionPreference = 'Stop';

$packageName = 'insomnia'
$installerType = 'exe'
$silentArgs = '--uninstall --uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\insomnia\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of Insomnia at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Local\insomnia -recurse
Remove-Item $Env:USERPROFILE\AppData\Roaming\insomnia -recurse
