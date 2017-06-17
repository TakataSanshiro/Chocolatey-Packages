$ErrorActionPreference = 'Stop';

$packageName = 'ida-free'
$installerType = 'exe'
$silentArgs = '/SILENT'
$validExitCodes = @(0)
$file = "${env:ProgramFiles(x86)}\IDA Free\unins000.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"