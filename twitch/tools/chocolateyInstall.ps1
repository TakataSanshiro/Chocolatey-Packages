$packageName = 'twitch'
$installerType = 'exe'
$url = 'https://updates.twitchapp.net/windows/TwitchSetup.exe' 
$silentArgs = '/Q'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum EACE4A666CA055C2F2CABD2E8C012F8B1F952726073CDD5F6192BF0E2D03319E -ChecksumType sha256
