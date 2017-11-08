$ErrorActionPreference = 'Stop';

$packageName = 'flow' 
$installerType = 'exe' 
$url = 'https://cdn.getflow.com/win32_ia32/production/release/Flow.zip' 
$silentArgs = '/S' 
$validExitCodes = @(0) 
$scriptDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$exe = "$scriptDir\Flow Setup 6.0.11-ia32.exe"

Install-ChocolateyZipPackage "$packageName" "$url" "$scriptDir" -Checksum 2F6B9214823F1406AE307C09E7C060D6FC0D8D2FCC9C938754C4C73C58ECE47E -ChecksumType sha256
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$exe"
