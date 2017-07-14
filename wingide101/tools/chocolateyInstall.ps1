$ErrorActionPreference = 'Stop';

$packageName = 'wingide101' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide-101/6.0.6/wingide-101-6.0.6-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 711DD341D380F432BF859E3EFF1C21EA13544C5DDF3BBA3ED79ABAB0EB1812F1 -ChecksumType sha256
