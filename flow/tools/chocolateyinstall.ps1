$ErrorActionPreference = 'Stop';

$packageName = 'flow' 
$installerType = 'exe' 
$url = 'https://cdn.getflow.com/win32_ia32/production/release/Flow.zip' 
$silentArgs = '/S' 
$validExitCodes = @(0) 
$scriptDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$exe = "$scriptDir\Flow Setup 6.0.17-ia32.exe"

Install-ChocolateyZipPackage "$packageName" "$url" "$scriptDir" -Checksum AF3A3CB95B06931ABA1544E1F9A64F2B7D6CD88664416FA70E0FF0A9FC530A12 -ChecksumType sha256
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$exe"
