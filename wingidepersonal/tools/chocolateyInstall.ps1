$ErrorActionPreference = 'Stop';

$packageName    = 'wingidepersonal' 
$installerType  = 'exe' 
$url            = 'https://wingware.com/pub/wing-personal/7.1.1.0/wing-personal-7.1.1.0.exe' 
$silentArgs     = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 8940B35807EA014270F5B9F772FEE1597011FD35821263A182A4928081D7CA6F -ChecksumType sha256
