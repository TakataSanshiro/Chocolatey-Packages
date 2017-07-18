$ErrorActionPreference = 'Stop';

$packageName = 'postbox'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$file = "${env:ProgramFiles(x86)}\Postbox\uninstall\helper.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"