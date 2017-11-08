$ErrorActionPreference = 'Stop';

$packageName = 'confide' 
$installerType = 'exe' 
$url = 'https://d3kedtkr0tjlm2.cloudfront.net/ConfideSetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 22947F97B0B799FA37D3FAC811A15F9C65C72680B54393EE35DC19634E77478E -ChecksumType sha256
