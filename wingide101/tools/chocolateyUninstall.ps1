$ErrorActionPreference = 'Stop';

$packageName = 'wingide101' 
$installerType = 'exe' 
$silentArgs = '/SILENT' 
$validExitCodes = @(0) 
$file = "${env:ProgramFiles(x86)}\Wing IDE 101 6.0\unins000.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 