$ErrorActionPreference = 'Stop';

$packageName = 'twitch'
$installerType = 'exe'
$url = 'https://updates.twitchapp.net/windows/installer/TwitchSetup.exe' 
$silentArgs = '/silent'
$validExitCodes = @(0, 1638)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 3ED7AD0D84852A8B2308F243BD66171C1B338CED8A6828757B25566ADD686D3E -ChecksumType sha256
