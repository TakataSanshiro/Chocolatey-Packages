$ErrorActionPreference = 'Stop';

$packageName = 'wingidepersonal' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide-personal/6.0.6/wingide-personal-6.0.6-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum ED39488A5BC73E4885ADFC36C45FAB722355BA57B9B69614E95D0821E8C889AD -ChecksumType sha256
