$ErrorActionPreference = 'Stop';

$packageName = 'wingide' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide/6.0.11/wingide-6.0.11-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 7BD3558523034A79DA0CF9C734A483CEE9C85E6FF05AC40A8B1EF135147A9BDD -ChecksumType sha256
