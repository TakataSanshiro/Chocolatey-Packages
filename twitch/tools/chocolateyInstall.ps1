$packageName = 'twitch'
$installerType = 'exe'
$url = 'https://updates.twitchapp.net/windows/TwitchSetup.exe' 
$silentArgs = '/Q'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum FC06BDF473CAEABB7C9FDCF97BB01E4C9CD5E783EA3DD43DD86269FA7B4B4EA0 -ChecksumType sha256
