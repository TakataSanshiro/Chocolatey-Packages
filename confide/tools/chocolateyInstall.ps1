$ErrorActionPreference = 'Stop';

$packageName = 'confide' 
$installerType = 'exe' 
$url = 'https://d3kedtkr0tjlm2.cloudfront.net/ConfideSetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 8ADED7A45861C689202380678A089EC442197DBC70242690E978CCE34DDA961D -ChecksumType sha256
