$ErrorActionPreference = 'Stop';

$packageName = 'tagflow' 
$installerType = 'exe' 
$url = 'https://tagflow-app-auto-update.herokuapp.com/download/win/' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum DD909BEAA81C828CC7364D123F6B537B37CF2F7A00D7948A14FC65331352A14B -ChecksumType sha256
