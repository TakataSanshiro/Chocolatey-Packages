$ErrorActionPreference = 'Stop';

$packageName    = 'wingide' 
$installerType  = 'exe' 
$url            = 'https://wingware.com/pub/wingpro/7.1.0.2/wingpro-7.1.0.2.exe' 
$silentArgs     = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 6BD7CC30E66B9371CC6D11B979EAD7CAD1E349F5C31124CAAF04AFC2C9EBF4E9 -ChecksumType sha256
