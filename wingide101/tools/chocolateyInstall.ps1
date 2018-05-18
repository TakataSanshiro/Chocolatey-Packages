$ErrorActionPreference = 'Stop';

$packageName = 'wingide101' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide-101/6.0.12/wingide-101-6.0.12-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 70B03C2B29ABD92C3944ED5B161E698B231CE7F5C79EFC9CC1303E36E56E0C54 -ChecksumType sha256
