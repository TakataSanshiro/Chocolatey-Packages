$ErrorActionPreference = 'Stop';

$packageName    = 'wingidepersonal' 
$installerType  = 'exe' 
$url            = 'https://wingware.com/pub/wing-personal/7.1.2.0/wing-personal-7.1.2.0.exe' 
$silentArgs     = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 77F21076E90419A83A67FAFD76DC1E8BB3241F34D0EA17E5F60C132AF7E8A3F7 -ChecksumType sha256
