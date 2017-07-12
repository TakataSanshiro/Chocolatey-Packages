$ErrorActionPreference = 'Stop';

$packageName = 'gamingapp' 
$installerType = 'exe' 
$url = 'http://download.msi.com/uti_exe/gaming_app_6.2.0.23.zip' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 
$scriptDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$exe = "$scriptDir\Gaming APP\Gaming APP.exe"

Install-ChocolateyZipPackage "$packageName" "$url" "$scriptDir" -Checksum CBFD5FC1E14E6B20C3DCF2CBFE9ECD09134701F5414DEDAD0CF663CA133A54A4 -ChecksumType sha256
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$exe"
