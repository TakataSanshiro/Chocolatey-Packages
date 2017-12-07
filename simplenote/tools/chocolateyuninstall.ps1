$ErrorActionPreference = 'Stop';

$packageName = 'simplenote'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$file = "${env:ProgramFiles(x86)}\Simplenote\Uninstall Simplenote.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of Simplenote at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Roaming\Simplenote -recurse
