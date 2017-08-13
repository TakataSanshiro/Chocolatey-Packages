$ErrorActionPreference = 'Stop';

$packageName = 'confide' 
$installerType = 'exe' 
$url = 'https://getconfide.com/download/windows/dl' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 8F2152042BBB520A8772DE43C289C441668EFC8B9B2841BBB8EED425816C32DB -ChecksumType sha256
