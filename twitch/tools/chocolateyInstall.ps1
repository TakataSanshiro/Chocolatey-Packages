$ErrorActionPreference = 'Stop';

$packageName = 'twitch'
$installerType = 'exe'
$url = 'https://updates.twitchapp.net/windows/TwitchSetup.exe' 
$silentArgs = '/Q'
$validExitCodes = @(0, 1638)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 28336977D66947BA62563DEF3559CD3928A7CF90120F27BEAD7CBDC54761844A -ChecksumType sha256
