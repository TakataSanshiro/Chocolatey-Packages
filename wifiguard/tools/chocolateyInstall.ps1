$ErrorActionPreference = 'Stop';

$packageName = 'wifiguard'
$installerType = 'exe'
$url = 'https://www.softperfect.com/download/files/wifiguard_windows_setup.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum BB02618FB21CEAEE30C14B200342971FEDBDA901B7FD11549C94A1D958F3900E -ChecksumType sha256
