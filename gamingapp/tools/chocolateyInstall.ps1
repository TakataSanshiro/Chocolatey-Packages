$ErrorActionPreference = 'Stop';

$packageName = 'gamingapp' 
$installerType = 'exe' 
$url = 'http://download.msi.com/uti_exe/gaming_app_6.zip' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 
$scriptDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$exe = "$scriptDir\Gaming APP\Gaming APP.exe"

Install-ChocolateyZipPackage "$packageName" "$url" "$scriptDir" -Checksum C71EA1A82162E56012A2D37EA834DDA89636E566276277AA55B83A832F1B770E -ChecksumType sha256
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$exe"
