$ErrorActionPreference = 'Stop';

$packageName = 'itch' 
$installerType = 'exe' 
$url = 'https://github.com/itchio/itch/releases/download/v23.4.1/itchSetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum D0F6C200F90E399801796B8B2FFA69B8CB94415D167046C1D6CE4401FBB64A85 -ChecksumType sha256
