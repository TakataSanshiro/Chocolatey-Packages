$ErrorActionPreference = 'Stop';

$packageName = 'now' 
$installerType = 'exe' 
$url = 'https://github.com/zeit/now-desktop/releases/download/4.0.18/now-desktop-Setup-4.0.18.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum C821E2621613F1175888415B5A0965965055297FBD6FBDE8940D6360A12FD7C0 -ChecksumType sha256
