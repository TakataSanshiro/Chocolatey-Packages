$ErrorActionPreference = 'Stop';

$packageName = 'wingidepersonal' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide-personal/6.0.9/wingide-personal-6.0.9-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 190FE2D938EE19B40275AA0DDE90164604E526DC042F0465C78B1BEFA408CF79 -ChecksumType sha256
