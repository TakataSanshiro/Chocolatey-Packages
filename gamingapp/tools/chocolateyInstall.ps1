$ErrorActionPreference = 'Stop';

$packageName = 'gamingapp' 
$installerType = 'exe' 
$url = 'http://download.msi.com/uti_exe/gaming_app_6.zip' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 
$scriptDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$exe = "$scriptDir\Gaming APP\Gaming APP.exe"

Install-ChocolateyZipPackage "$packageName" "$url" "$scriptDir" -Checksum F0B3A3591675B9838D88F34350DE38ABC210488CAEAE9E827283AF4468330E84 -ChecksumType sha256
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$exe"
