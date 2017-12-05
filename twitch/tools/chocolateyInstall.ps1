$ErrorActionPreference = 'Stop';

$packageName = 'twitch'
$installerType = 'exe'
$url = 'https://updates.twitchapp.net/windows/installer/TwitchSetup.exe' 
$silentArgs = '/silent'
$validExitCodes = @(0, 1638)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 81B7D63F16C87AABA97656E5AE4C909FAF329AD44279720E1DDBA27B87D2883D -ChecksumType sha256
