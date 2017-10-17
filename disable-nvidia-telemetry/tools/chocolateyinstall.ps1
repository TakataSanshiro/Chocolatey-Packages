$ErrorActionPreference = 'Stop';

$packageName = 'disable-nvidia-telemetry'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/NateShoffner/Disable-Nvidia-Telemetry/releases/download/1.1/Disable.Nvidia.Telemetry.1.1.0.16.Setup.exe' 
$checksum = 'BEC60010867B5759CF35FF6F4064F9523E11ED78DFCC41DECFE1B78B7285DC9D'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"