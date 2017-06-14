$ErrorActionPreference = 'Stop';

$packageName = 'puredata'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$file = "${env:ProgramFiles(x86)}\Pd\uninst.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"