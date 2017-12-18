$ErrorActionPreference = 'Stop';

$packageName = 'wingide' 
$installerType = 'exe' 
$url = 'http://wingware.com/pub/wingide/6.0.9/wingide-6.0.9-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum A62E783CA59441DA7D6E17C870F3056ADE1F4E54AC874BD8B66EC2C96C6529E3 -ChecksumType sha256
