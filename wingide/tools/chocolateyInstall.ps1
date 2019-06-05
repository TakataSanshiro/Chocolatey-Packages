$ErrorActionPreference = 'Stop';

$packageName = 'wingide' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide/7.0.3.0/wingpro-7.0.3.0.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 141E7CFB000E480F7ADED2B6FDC34A0FFDA4F4909FF6A89C8A4893F7B25B9681 -ChecksumType sha256
