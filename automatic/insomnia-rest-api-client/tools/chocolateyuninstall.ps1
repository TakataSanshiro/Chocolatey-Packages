$ErrorActionPreference = 'Stop';

$packageName = 'insomnia-rest-api-client'
$installerType = 'exe'
$silentArgs = '--uninstall --uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\Insomnia\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
