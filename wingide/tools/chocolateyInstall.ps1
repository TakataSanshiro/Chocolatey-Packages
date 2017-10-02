$ErrorActionPreference = 'Stop';

$packageName = 'wingide' 
$installerType = 'exe' 
$url = 'http://wingware.com/pub/wingide/6.0.7/wingide-6.0.7-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 588A48039F1D49951CE992659A41FD5C4F94A6229296F2BB2231584FACE80991 -ChecksumType sha256
