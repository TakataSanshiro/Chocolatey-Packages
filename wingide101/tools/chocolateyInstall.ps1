$ErrorActionPreference = 'Stop';

$packageName = 'wingide101' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide-101/6.0.8/wingide-101-6.0.8-2.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 2DDCEFD3E43A61E9ADD543238F6F837A7D18856ED547A79A7C24E8E6600605A5 -ChecksumType sha256
