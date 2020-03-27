$ErrorActionPreference = 'Stop';

$packageName    = 'gamingapp' 
$installerType  = 'exe' 
$url            = 'http://download.msi.com/uti_exe/gaming_app_6.zip' 
$silentArgs     = '/VERYSILENT' 
$validExitCodes = @(0) 
$scriptDir      = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$exe            = "$scriptDir\6.2.0.97\Gaming APP.exe"

Install-ChocolateyZipPackage "$packageName" "$url" "$scriptDir" -Checksum 9269DE9880CF2B98B7100E8CDC42F3A6F4A42FD5E2856B91045E296DA9B698E5 -ChecksumType sha256
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$exe"
