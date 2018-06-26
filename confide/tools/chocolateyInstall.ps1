$ErrorActionPreference = 'Stop';

$packageName = 'confide' 
$installerType = 'exe' 
$url = 'https://d3kedtkr0tjlm2.cloudfront.net/ConfideSetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 8B9C385F32A9B06C32FE50F35966A2FFFED427FAA1FDD3583B00997D30AFBAA9 -ChecksumType sha256
