$ErrorActionPreference = 'Stop';

$packageName = 'itch' 
$installerType = 'exe' 
$url = 'https://github.com/itchio/itch/releases/download/v23.6.3/itchSetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum C273D92AF33AD1A74E40CCBAC72322B79051E2A367A215C0875794D3A8C4F9AA -ChecksumType sha256
