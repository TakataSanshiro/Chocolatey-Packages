$ErrorActionPreference = 'Stop';

$packageName = 'now' 
$installerType = 'exe' 
$url = 'https://github.com/zeit/now-desktop/releases/download/3.8.23/now-desktop-Setup-3.8.23.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum EBCEEAB885031FD47A3F5BF09970A9AF6C968676E49487D4A0D4FFD3E5C7ABDD -ChecksumType sha256
