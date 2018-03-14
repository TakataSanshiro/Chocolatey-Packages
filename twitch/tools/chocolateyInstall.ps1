$ErrorActionPreference = 'Stop';

$packageName = 'twitch'
$installerType = 'exe'
$url = 'https://updates.twitchapp.net/windows/installer/TwitchSetup.exe' 
$silentArgs = '/silent'
$validExitCodes = @(0, 1638)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 46CBA1CAC8E1BE9A27C7BB871535FDC67E4136918DB9E185FE34D07F3020D1FE -ChecksumType sha256
