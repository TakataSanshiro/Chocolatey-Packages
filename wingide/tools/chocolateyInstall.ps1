$ErrorActionPreference = 'Stop';

$packageName = 'wingide' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide/6.0.6/wingide-6.0.6-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum D5E018E28FA71A4C97F510CD3CB06F1E75951B652239AD7CF7B671CE16D32ED1 -ChecksumType sha256
