$ErrorActionPreference = 'Stop';

$packageName = 'cryptocat' 
$installerType = 'exe' 
$silentArgs = '/currentuser /S' 
$validExitCodes = @(0) 
$file = "$Env:USERPROFILE\AppData\Local\Programs\Cryptocat\Uninstall Cryptocat.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
