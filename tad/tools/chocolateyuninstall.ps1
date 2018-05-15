$ErrorActionPreference = 'Stop';

$packageName = 'tad'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$file = "${env:ProgramFiles}\Tad\Uninstall Tad.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"