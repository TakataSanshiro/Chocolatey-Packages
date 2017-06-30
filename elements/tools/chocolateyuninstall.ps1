$ErrorActionPreference = 'Stop';

$packageName = 'elements'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\Programs\Elements\Uninstall Elements.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of Elements at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Roaming\Elements -recurse
