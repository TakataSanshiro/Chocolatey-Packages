$ErrorActionPreference = 'Stop';

$packageName = 'twitch'
$installerType = 'exe'
$url = 'https://updates.twitchapp.net/windows/TwitchSetup.exe' 
$silentArgs = '/Q'
$validExitCodes = @(0, 1638)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum C3C8EA4CFE6BDE7A0D1D52D52B56CBC95F9E676E65AF2490F63DF81F599CEAF7 -ChecksumType sha256
