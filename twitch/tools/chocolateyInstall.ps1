$ErrorActionPreference = 'Stop';

$packageName = 'twitch'
$installerType = 'exe'
$url = 'https://updates.twitchapp.net/windows/installer/TwitchSetup.exe' 
$silentArgs = '/silent'
$validExitCodes = @(0, 1638)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum C36F513BF8F1A8BFD3F4B4B655443F8ACC3054C6E50F63D5D79F7670E9E51343 -ChecksumType sha256
