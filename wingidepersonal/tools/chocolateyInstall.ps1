$ErrorActionPreference = 'Stop';

$packageName    = 'wingidepersonal' 
$installerType  = 'exe' 
$url            = 'https://wingware.com/pub/wing-personal/7.1.0.2/wing-personal-7.1.0.2.exe' 
$silentArgs     = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 39751474D2BC6FA5313A5547F48D91378C11E660A9E856DE93A79776584680BF -ChecksumType sha256
