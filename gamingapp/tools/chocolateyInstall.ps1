$ErrorActionPreference = 'Stop';

$packageName = 'gamingapp' 
$installerType = 'exe' 
$url = 'http://download.msi.com/uti_exe/gaming_app_6.zip' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 
$scriptDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$exe = "$scriptDir\Gaming APP\Gaming APP.exe"

Install-ChocolateyZipPackage "$packageName" "$url" "$scriptDir" -Checksum 9E310D0A5E1DE5A563A1B48262A35EFD2D590F194C91223CEE7E79CF17F531B4 -ChecksumType sha256
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$exe"
