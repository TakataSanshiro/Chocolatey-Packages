$ErrorActionPreference = 'Stop';

$packageName = 'now' 
$installerType = 'exe' 
$url = 'https://github.com/zeit/now-desktop/releases/download/3.8.25/now-desktop-Setup-3.8.25.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum C303B8D7ECE4D4381EB8C338057B401230365690614EC218E37E3FD2DEAED46A -ChecksumType sha256
