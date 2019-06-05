$ErrorActionPreference = 'Stop';

$packageName = 'wingide' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide/7.0.3.0/wingpro-7.0.3.0.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum B25DFF2F460D3DCE65F3A507388DFEFFBE88CFB282391A05886C834766D18A64 -ChecksumType sha256
