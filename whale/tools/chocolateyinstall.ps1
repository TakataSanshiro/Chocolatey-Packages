$ErrorActionPreference = 'Stop';

$packageName = 'whale'
$url = 'https://github.com/1000ch/whale/releases/download/v0.9.0/Whale-windows-v0.9.0.zip'
$checksum = '2B2EC403151D2826A20B60F803E967502408403F45FD24311A16302C07C0424E'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create an .exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\Whale.lnk" `
						     -TargetPath "$toolsDir\Whale.exe"
							 