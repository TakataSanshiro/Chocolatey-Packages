$packageName    = 'textify'
$installerType  = 'exe'
$silentArgs     = '/S'
$validExitCodes = @(0)
$file           = "$Env:USERPROFILE\AppData\Roaming\Textify\uninstall.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
  