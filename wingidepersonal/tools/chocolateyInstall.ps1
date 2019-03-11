$ErrorActionPreference = 'Stop';

$packageName = 'wingidepersonal' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide-personal/6.1.5/wingide-personal-6.1.5-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum BF4F5599A0AB81BB3357C22D1FD62F075AE20ECA5F861610BFBEF3F07C478138 -ChecksumType sha256
