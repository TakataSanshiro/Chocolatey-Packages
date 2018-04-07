$ErrorActionPreference = 'Stop';

$packageName = 'twitch'
$installerType = 'exe'
$url = 'https://updates.twitchapp.net/windows/installer/TwitchSetup.exe' 
$silentArgs = '/silent'
$validExitCodes = @(0, 1638)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum ABBDE7D9D45E566AA45CB0757D9501F7DEE14FF72C786CC74F7733A98884F254 -ChecksumType sha256
