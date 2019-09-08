$ErrorActionPreference = 'Stop';

$packageName    = 'wingide' 
$installerType  = 'exe' 
$url            = 'https://wingware.com/pub/wingpro/7.1.1.0/wingpro-7.1.1.0.exe' 
$silentArgs     = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum DF4A7B76FCA951DFAAE547A0AE7FAD21A523ECC4D7181FAFD3C5EA2EEFC3CA84 -ChecksumType sha256
