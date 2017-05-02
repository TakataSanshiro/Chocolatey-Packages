$ErrorActionPreference = 'Stop';

$packageName = 'textify'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Roaming\Textify\uninstall.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of Textify at $Env:USERPROFILE\AppData\Roaming\Textify
Remove-Item $Env:USERPROFILE\AppData\Roaming\Textify -recurse
