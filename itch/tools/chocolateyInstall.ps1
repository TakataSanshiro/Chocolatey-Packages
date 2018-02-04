$ErrorActionPreference = 'Stop';

$packageName = 'itch' 
$installerType = 'exe' 
$url = 'https://github.com/itchio/itch/releases/download/v23.6.1/itchSetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 8B0AF16E3545701910D9CC3EEE701C9AA63A381D663E1CF1AC5E4F25FA13ACFA -ChecksumType sha256
