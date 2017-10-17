$ErrorActionPreference = 'Stop';

$packageName = 'disable-nvidia-telemetry.portable'
$url = 'https://github.com/NateShoffner/Disable-Nvidia-Telemetry/releases/download/1.1/Disable.Nvidia.Telemetry.1.1.0.16.Portable.exe' 
$checksum = '9892900C6E1D6D4C489F6DB84B485AC36E4009B86E3372EDC9D20564D648C562'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create an exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\Disable Nvidia Telemetry.lnk" `
						     -TargetPath "$toolsDir\Disable Nvidia Telemetry.exe"							 