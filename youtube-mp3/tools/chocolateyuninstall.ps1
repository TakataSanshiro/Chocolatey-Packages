$ErrorActionPreference = 'Stop';

$packageName = 'youtube-mp3'
$installerType = 'exe'
$silentArgs = '--uninstall --uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\Youtube\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"

# Delete junk files of Youtube at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Local\Youtube -recurse
Remove-Item $Env:USERPROFILE\AppData\Roaming\Youtube-mp3 -recurse
