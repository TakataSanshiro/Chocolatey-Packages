$ErrorActionPreference = 'Stop';

$packageName = 'itch' 
$installerType = 'exe' 
$url = 'https://github.com/itchio/itch/releases/download/v23.5.1/itchSetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum E15F3B3D4815CEF5590279B616B2D463307B15C43367779A86F7F566FC27D3B0 -ChecksumType sha256
