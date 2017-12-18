$ErrorActionPreference = 'Stop';

$packageName = 'wingide101' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide-101/6.0.9/wingide-101-6.0.9-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 905058BCBD1F7143C1121C0286C929DAC9540E008A92C58A30F4E5BE31E70C79 -ChecksumType sha256
