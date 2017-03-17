$packageName = 'cryptocat' 
$installerType = 'exe' 
$url = 'https://download.crypto.cat/client/Cryptocat-win32-x64.zip' 
$silentArgs = '/S' 
$validExitCodes = @(0) 
$scriptDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$exe = "$scriptDir\Cryptocat Setup 3.2.8.exe"

Install-ChocolateyZipPackage "$packageName" "$url" "$scriptDir" -Checksum 8D19AF43AA95C47FD7791C1B75ACDA46CEDB72F34D4F199849F12888670B50F7 -ChecksumType sha256
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$exe"
