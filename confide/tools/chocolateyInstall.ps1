$ErrorActionPreference = 'Stop';

$packageName    = 'confide' 
$installerType  = 'exe' 
$url            = 'https://d3kedtkr0tjlm2.cloudfront.net/ConfideSetup.exe' 
$silentArgs     = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 8D9A33B02F7DFBCE83E9844F915F0C1B8E6591233F7F6ADE720225BAC8AE0F61 -ChecksumType sha256
