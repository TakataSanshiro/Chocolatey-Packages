$ErrorActionPreference = 'Stop';

$packageName = 'now' 
$installerType = 'exe' 
$url = 'https://github.com/zeit/now-desktop/releases/download/3.8.3/now-desktop-Setup-3.8.3.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum ECAED510C52AACCEAA374FDFBAE71534337EF15A71F7397247EBEE0EB91A6F06 -ChecksumType sha256
