$ErrorActionPreference = 'Stop';

$packageName = 'wow-stat'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\Programs\WoW Stat\Uninstall WoW Stat.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"

# Delete junk files of wowstat at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Roaming\wowstat -recurse