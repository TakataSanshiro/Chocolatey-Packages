$ErrorActionPreference = 'Stop';

$packageName = 'devdocs-app'
$installerType = 'exe'
$silentArgs = '--uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\DevDocs\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
