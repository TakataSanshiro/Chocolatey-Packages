$ErrorActionPreference = 'Stop';

$packageName    = 'gamingapp' 
$installerType  = 'exe' 
$url            = 'http://download.msi.com/uti_exe/vga/gaming_app_6.zip' 
$silentArgs     = '/VERYSILENT' 
$validExitCodes = @(0) 
$scriptDir      = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$exe            = "$scriptDir\6.2.0.98\Gaming APP.exe"

Install-ChocolateyZipPackage "$packageName" "$url" "$scriptDir" -Checksum D028B8EA913F6A99F62E96F947E6DC223609FBF345E46ED51C0FB19C87EA08EB -ChecksumType sha256
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$exe"
