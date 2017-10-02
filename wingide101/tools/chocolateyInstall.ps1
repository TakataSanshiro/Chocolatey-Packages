$ErrorActionPreference = 'Stop';

$packageName = 'wingide101' 
$installerType = 'exe' 
$url = 'http://wingware.com/pub/wingide-101/6.0.7/wingide-101-6.0.7-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 040150AAB938D16A7139D093E7ACAC9D0554998B72B696B3537EEDF84995E2A7 -ChecksumType sha256
