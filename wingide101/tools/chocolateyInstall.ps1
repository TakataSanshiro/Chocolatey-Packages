$ErrorActionPreference = 'Stop';

$packageName = 'wingide101' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wing-101/7.0.3.0/wing-101-7.0.3.0.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 6E7BD4FCB21EEE6782EC5FAA6320D941AC8324770F819B0312A7D38F64F276E8 -ChecksumType sha256
