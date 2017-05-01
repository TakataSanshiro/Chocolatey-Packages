$packageName = 'twitch'
$installerType = 'exe'
$url = 'https://updates.twitchapp.net/windows/TwitchSetup.exe' 
$silentArgs = '/Q'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum B6325DDDEB6211739B3F1FF7B1FFF2EC02C9034B5B3DD5CCF8EEEFE3BF19F725 -ChecksumType sha256
