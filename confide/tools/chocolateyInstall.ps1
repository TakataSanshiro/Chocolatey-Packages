$ErrorActionPreference = 'Stop';

$packageName = 'confide' 
$installerType = 'exe' 
$url = 'https://getconfide.com/download/windows/dl' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 9D38F3174AF557FCE5115232F193358057DFEF2946F13CD907DF1B29CEE5A8E7 -ChecksumType sha256
