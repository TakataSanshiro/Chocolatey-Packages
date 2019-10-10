$ErrorActionPreference = 'Stop';

$packageName    = 'wingide101' 
$installerType  = 'exe' 
$url            = 'https://wingware.com/pub/wing-101/7.1.2.0/wing-101-7.1.2.0.exe' 
$silentArgs     = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 85FD3020B6FDB0FEE13C2884C8C93489A744E93682CDBDB8689208F1059C50D7 -ChecksumType sha256
