$ErrorActionPreference = 'Stop';

$packageName    = 'wifiguard'
$installerType  = 'exe'
$url            = 'https://www.softperfect.com/download/files/wifiguard_windows_setup.exe'
$silentArgs     = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 3D9250873346FA8ACFF722684DCBA0C72B32728A0A46E383D0E0340B2EEFA56B -ChecksumType sha256
