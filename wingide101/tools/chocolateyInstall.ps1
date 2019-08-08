$ErrorActionPreference = 'Stop';

$packageName    = 'wingide101' 
$installerType  = 'exe' 
$url            = 'https://wingware.com/pub/wing-101/7.1.0.2/wing-101-7.1.0.2.exe' 
$silentArgs     = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum A8E6C7615E3F7BFCB9AB621670A0480C9031AF2BB6C6E0DE1083B4622FB3017C -ChecksumType sha256
