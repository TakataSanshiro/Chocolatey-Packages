$ErrorActionPreference = 'Stop';

$packageName = 'wingide' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide/6.0.12/wingide-6.0.12-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 65FEFBDD5A7045D68576FE4AD9ED6E62FEDC986C0CAFB9FEF476E535BD250C91 -ChecksumType sha256
