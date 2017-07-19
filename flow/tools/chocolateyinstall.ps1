$ErrorActionPreference = 'Stop';

$packageName = 'flow' 
$installerType = 'exe' 
$url = 'https://cdn.getflow.com/win32_ia32/production/release/Flow.zip' 
$silentArgs = '/S' 
$validExitCodes = @(0) 
$scriptDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$exe = "$scriptDir\Flow Setup 6.0.9-ia32.exe"

Install-ChocolateyZipPackage "$packageName" "$url" "$scriptDir" -Checksum CA886CE236F3229750E0966E31A6A23520762861D438AE6BA30EB40C75723750 -ChecksumType sha256
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$exe"
