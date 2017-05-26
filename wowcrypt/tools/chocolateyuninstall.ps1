$ErrorActionPreference = 'Stop';

$packageName = 'wowcrypt'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\Programs\WoW Crypt\0.0.4\Uninstall WoW Crypt.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"

# Delete junk files of WoW Crypt at $Env:USERPROFILE\AppData
Remove-Item "$Env:USERPROFILE\AppData\Roaming\WoW Crypt" -recurse