$ErrorActionPreference = 'Stop';

$packageName = 'now' 
$installerType = 'exe' 
$url = 'https://github.com/zeit/now-desktop/releases/download/3.8.28/now-desktop-Setup-3.8.28.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 725282BB1E1843D3B58ECD4021C9E901E17F9362859866F82BFA7E7E951E646D -ChecksumType sha256
