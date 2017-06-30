$ErrorActionPreference = 'Stop';

$packageName = 'akiee'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\Programs\akiee\Uninstall akiee.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of akiee at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Roaming\akiee -recurse
