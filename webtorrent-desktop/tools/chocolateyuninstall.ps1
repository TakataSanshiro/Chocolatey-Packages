$ErrorActionPreference = 'Stop';

$packageName = 'webtorrent-desktop'
$installerType = 'exe'
$silentArgs = '--uninstall --uninstall -s'
$validExitCodes = @(0)
$file = "$Env:USERPROFILE\AppData\Local\WebTorrent\Update.exe"

Uninstall-ChocolateyPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs "$silentArgs" `
  -ValidExitCodes $validExitCodes `
  -File "$file"
 
# Delete junk files of WebTorrent at $Env:USERPROFILE\AppData
Remove-Item $Env:USERPROFILE\AppData\Local\WebTorrent -recurse
Remove-Item $Env:USERPROFILE\AppData\Roaming\WebTorrent -recurse
