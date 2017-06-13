$ErrorActionPreference = 'Stop';

$packageName = 'fileassassin'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$file = "${env:ProgramFiles(x86)}\FileASSASSIN\uninst.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"