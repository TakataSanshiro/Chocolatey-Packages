$ErrorActionPreference = 'Stop';

$packageName    = 'wifiguard'
$installerType  = 'exe'
$url            = 'https://www.softperfect.com/download/files/wifiguard_windows_setup.exe'
$silentArgs     = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 84382782680C741C6DE7C17C04BE37772E1D62F00C9B99253AC6714ADEBA4622 -ChecksumType sha256
