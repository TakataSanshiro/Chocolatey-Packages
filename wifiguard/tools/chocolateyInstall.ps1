$ErrorActionPreference = 'Stop';

$packageName = 'wifiguard'
$installerType = 'exe'
$url = 'https://www.softperfect.com/download/files/wifiguard_windows_setup.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum E3B0C44298FC1C149AFBF4C8996FB92427AE41E4649B934CA495991B7852B855 -ChecksumType sha256
