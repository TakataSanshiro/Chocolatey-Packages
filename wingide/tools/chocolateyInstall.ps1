$ErrorActionPreference = 'Stop';

$packageName = 'wingide' 
$installerType = 'exe' 
$url = 'http://wingware.com/pub/wingide/6.0.8/wingide-6.0.8-2.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 46EFB7CDF67BEE566A2C30314756F768405946893D653C2A9DEE5D3BBEEF313B -ChecksumType sha256
