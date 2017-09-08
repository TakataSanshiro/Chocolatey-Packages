$ErrorActionPreference = 'Stop';

$packageName = 'confide' 
$installerType = 'exe' 
$url = 'https://getconfide.com/download/windows/dl' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 2E7C6C3FFF30F01D8D16514ADC1DD00C1D0DADCD7EB66F1A1592BC6A18B8EE16 -ChecksumType sha256
