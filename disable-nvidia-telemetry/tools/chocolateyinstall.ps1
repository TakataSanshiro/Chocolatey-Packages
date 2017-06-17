$ErrorActionPreference = 'Stop';

$packageName = 'disable-nvidia-telemetry'
$url = 'https://github.com/NateShoffner/Disable-Nvidia-Telemetry/releases/download/1.0/Disable.Nvidia.Telemetry.v1.0.zip' 
$checksum = 'F30ECEEA7BBF4F1F68A7185C1C80D2A2D32697E77C732B8E66846CCDA87B2285'
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