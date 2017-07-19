$ErrorActionPreference = 'Stop';

$packageName = 'now' 
$installerType = 'exe' 
$url = 'https://github.com/zeit/now-desktop/releases/download/2.2.1/now-desktop-Setup-2.2.1.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum F2DB7AA1EA22BFB1D2B6F93BCB9CADD20A37B117BD448888F6D1739FF2E9B037 -ChecksumType sha256
