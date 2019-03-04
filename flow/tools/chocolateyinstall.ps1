$ErrorActionPreference = 'Stop';

$packageName = 'flow' 
$installerType = 'exe' 
$url = 'https://cdn.getflow.com/win32_ia32/production/release/Flow.zip' 
$silentArgs = '/S' 
$validExitCodes = @(0) 
$scriptDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$exe = "$scriptDir\Flow Setup 6.0.26.exe"

Install-ChocolateyZipPackage "$packageName" "$url" "$scriptDir" -Checksum BF4C01E6857B28B380C2AA41D37321BD28C45FE6CAA3E20A2D3B03A5F132B688 -ChecksumType sha256
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$exe"
