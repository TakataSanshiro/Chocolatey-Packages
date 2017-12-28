$ErrorActionPreference = 'Stop';

$packageName = 'wifiguard'
$installerType = 'exe'
$url = 'https://www.softperfect.com/download/files/wifiguard_windows_setup.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 24AAF2A86D6467AA92B0247E28D6A3D01AF8A6523BBEE8C661B2EF50CBCD7C64 -ChecksumType sha256

