$ErrorActionPreference = 'Stop';

$packageName = 'wingidepersonal' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wing-personal/7.0.3.0/wing-personal-7.0.3.0.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 450AD50E74FAF2BCFBA32C6C41CED18644EDEF470BDC9F30B031A940253CF083 -ChecksumType sha256
