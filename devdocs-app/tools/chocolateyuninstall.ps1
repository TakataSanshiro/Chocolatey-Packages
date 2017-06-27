$ErrorActionPreference = 'Stop';

$packageName = 'devdocs-app'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\Programs\DevDocs\Uninstall DevDocs.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"