$ErrorActionPreference = 'Stop';

$packageName    = 'confide' 
$installerType  = 'exe' 
$url            = 'https://d3kedtkr0tjlm2.cloudfront.net/ConfideSetup.exe' 
$silentArgs     = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 598F66BCE69679B630B74CFFF4C9003BEC8D4926F759854A3B1D6B5181BF72CE -ChecksumType sha256
