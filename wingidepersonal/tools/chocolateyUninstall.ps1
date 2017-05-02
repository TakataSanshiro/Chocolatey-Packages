$ErrorActionPreference = 'Stop';

$packageName = 'wingidepersonal' 
$installerType = 'exe' 
$silentArgs = '/SILENT' 
$validExitCodes = @(0) 
$file = "${env:ProgramFiles(x86)}\Wing IDE Personal 6.0\unins000.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 