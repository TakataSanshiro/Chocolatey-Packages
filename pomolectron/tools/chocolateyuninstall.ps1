$ErrorActionPreference = 'Stop';

$packageName = 'pomolectron'
$installerType = 'exe'
$silentArgs = '/SILENT'
$validExitCodes = @(0)
$file = "${env:ProgramFiles(x86)}\Pomolectron\unins000.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of Pomolectron at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Roaming\Pomolectron -recurse
