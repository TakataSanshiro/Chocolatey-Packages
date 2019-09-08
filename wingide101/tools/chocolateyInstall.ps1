$ErrorActionPreference = 'Stop';

$packageName    = 'wingide101' 
$installerType  = 'exe' 
$url            = 'https://wingware.com/pub/wing-101/7.1.1.0/wing-101-7.1.1.0.exe' 
$silentArgs     = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 5B665C0C775C53CDD93C62B1ABB16A1DE1049659CEC85C94F0CADBAEA8E9B2E1 -ChecksumType sha256
