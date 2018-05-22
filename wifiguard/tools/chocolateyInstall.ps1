$ErrorActionPreference = 'Stop';

$packageName = 'wifiguard'
$installerType = 'exe'
$url = 'https://www.softperfect.com/download/files/wifiguard_windows_setup.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum FB05D9BE025B9689AAB87282869A5B9A5865A51653CC1413C90F04DD54007FBD -ChecksumType sha256
