$ErrorActionPreference = 'Stop';

$packageName = 'now' 
$installerType = 'exe' 
$url = 'https://github.com/zeit/now-desktop/releases/download/3.8.9/now-desktop-Setup-3.8.9.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 32FBECF886934B4BF490B167F162BD3B4F367717AC5682A2E330B145186694B6 -ChecksumType sha256
