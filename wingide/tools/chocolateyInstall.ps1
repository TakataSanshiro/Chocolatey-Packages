$ErrorActionPreference = 'Stop';

$packageName    = 'wingide' 
$installerType  = 'exe' 
$url            = 'https://wingware.com/pub/wingpro/7.1.2.0/wingpro-7.1.2.0.exe' 
$silentArgs     = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum C1F0148C952FA875AA90723941BF651801007177347A03EB18E8047404C80BA3 -ChecksumType sha256
