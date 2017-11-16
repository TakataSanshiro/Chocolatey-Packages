$ErrorActionPreference = 'Stop';

$packageName = 'wingidepersonal' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide-personal/6.0.8/wingide-personal-6.0.8-2.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 83303AA713F611C5ED6D76E8C95E0C51EA644D60326FFE397BE94C516B61937C -ChecksumType sha256
