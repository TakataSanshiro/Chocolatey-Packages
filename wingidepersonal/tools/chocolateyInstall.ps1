$ErrorActionPreference = 'Stop';

$packageName = 'wingidepersonal' 
$installerType = 'exe' 
$url = 'http://wingware.com/pub/wingide-personal/6.0.7/wingide-personal-6.0.7-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum D0032AEA49356AA01A0B0F35094EE5BE1FD0DF9A12F735599997DA2CB8F49F28 -ChecksumType sha256
