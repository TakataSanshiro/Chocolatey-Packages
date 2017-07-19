$ErrorActionPreference = 'Stop';

$packageName = 'wifiguard'
$installerType = 'exe'
$url = 'https://www.softperfect.com/download/files/wifiguard_windows_setup.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum C2E95764F01B8C0D872F7A4EC2030E58FFF405C9572A1DE6910F0FC5586FAF1D -ChecksumType sha256

