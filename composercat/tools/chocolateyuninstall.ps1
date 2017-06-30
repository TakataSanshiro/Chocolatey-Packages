$ErrorActionPreference = 'Stop';

$packageName = 'composercat'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\Programs\composercat\Uninstall Composercat.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of Composercat at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Roaming\Composercat -recurse
