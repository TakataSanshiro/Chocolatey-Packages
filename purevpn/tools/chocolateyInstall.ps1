$ErrorActionPreference = 'Stop';

$packageName = 'purevpn' 
$installerType = 'exe' 
$url = 'https://s3.amazonaws.com/purevpn-dialer-assets/windows/app/purevpn_setup.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0 3010, 1641) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 5212777915F2402D13022EB010BAC0AFFC12E33E30C9C48125720F9B2BD5F526 -ChecksumType sha256
