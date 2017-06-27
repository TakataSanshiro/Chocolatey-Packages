$ErrorActionPreference = 'Stop';

$packageName = 'twitch'
$installerType = 'exe'
$url = 'https://updates.twitchapp.net/windows/TwitchSetup.exe' 
$silentArgs = '/Q'
$validExitCodes = @(0, 1638)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum BE6D9192E0C7BF41963DBE566C56EAD6C0D141275B05098BD13D28B3ED44924A -ChecksumType sha256
