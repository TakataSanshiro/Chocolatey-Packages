$ErrorActionPreference = 'Stop';

$packageName = 'wingide101' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide-101/6.0.11/wingide-101-6.0.11-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 16FC59D184C18A9C40281F6AB4485ABCAAA15DFD0A2BCF5F22C3F23308BA16C5 -ChecksumType sha256
