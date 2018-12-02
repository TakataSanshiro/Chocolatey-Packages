$ErrorActionPreference = 'Stop';

$packageName = 'now' 
$installerType = 'exe' 
$url = 'https://github.com/zeit/now-desktop/releases/download/4.0.12/now-desktop-Setup-4.0.12.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 639B4D3EB0531F5189A7CE1F934FF6582C6E414352564FFF8B470DECB1D7AE05 -ChecksumType sha256
