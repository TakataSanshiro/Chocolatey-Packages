$ErrorActionPreference = 'Stop';

$packageName = 'insomnia-rest-api-client'
$installerType = 'exe'
$silentArgs = '--uninstall --uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\Insomnia\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of Insomnia at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Local\Insomnia -recurse
Remove-Item $Env:USERPROFILE\AppData\Roaming\Insomnia -recurse
