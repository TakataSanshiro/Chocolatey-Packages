$ErrorActionPreference = 'Stop';

$packageName = 'wingidepersonal' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide-personal/6.0.12/wingide-personal-6.0.12-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum ADD600E6BB9BAE58FD6B6057BA1F7DA43DB0349735DB2AB2D997588B21087CDC -ChecksumType sha256
