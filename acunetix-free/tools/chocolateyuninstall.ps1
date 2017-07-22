$ErrorActionPreference = 'Stop';

$packageName = 'acunetix-free' 
$installerType = 'exe' 
$silentArgs = '/SILENT' 
$validExitCodes = @(0) 
$file = "${env:ProgramFiles(x86)}\Acunetix Manual Tools\unins000.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"