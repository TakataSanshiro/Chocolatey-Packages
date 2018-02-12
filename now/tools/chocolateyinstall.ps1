$ErrorActionPreference = 'Stop';

$packageName = 'now' 
$installerType = 'exe' 
$url = 'https://github.com/zeit/now-desktop/releases/download/3.8.14/now-desktop-Setup-3.8.14.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum C56D50B7C47B96361E8B0BA5A5BC4D49AF586E20B36EC147CBBD4E6BE6253CF8 -ChecksumType sha256
