$packageName = 'wifiguard'
$installerType = 'exe'
$url = 'https://www.softperfect.com/download/freeware/wifiguard_windows_setup.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 4FD46E196A60AD14D4F36616E3598990C58243A66D652C34E3C5C43081E9A16D -ChecksumType sha256

