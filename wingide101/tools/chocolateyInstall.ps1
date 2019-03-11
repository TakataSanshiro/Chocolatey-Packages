$ErrorActionPreference = 'Stop';

$packageName = 'wingide101' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide-101/6.1.5/wingide-101-6.1.5-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 88FC554BB4191745F78C1953B9668600AB64726D306AD3DAD31A8370910E4F43 -ChecksumType sha256
