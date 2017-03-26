$packageName = 'wingidepersonal' 
$installerType = 'exe' 
$url = 'https://wingware.com/pub/wingide-personal/6.0.3/wingide-personal-6.0.3-1.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 47148C22EFD5282944312967C4DD99735A49E465004C8B64651A819806ED3CBB -ChecksumType sha256
