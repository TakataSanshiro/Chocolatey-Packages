$ErrorActionPreference = 'Stop';

$packageName = 'confide' 
$installerType = 'exe' 
$url = 'https://d3kedtkr0tjlm2.cloudfront.net/ConfideSetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 7449A364F908C1F030E73AAE70159ED4C654C52EA2DCEB3EA9BFF2C322E36AEE -ChecksumType sha256
