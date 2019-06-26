$ErrorActionPreference = 'Stop';

$packageName    = 'confide' 
$installerType  = 'exe' 
$url            = 'https://d3kedtkr0tjlm2.cloudfront.net/ConfideSetup.exe' 
$silentArgs     = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 0F98ECAD0576AB353AE166C8EB089E5A3B78E3287283731A2C7E3053E82671C6 -ChecksumType sha256
