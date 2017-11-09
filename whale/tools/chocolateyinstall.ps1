$ErrorActionPreference = 'Stop';

$packageName = 'whale'
$url = 'https://github.com/1000ch/whale/releases/download/v0.12.0/Whale-windows-v0.12.0.zip'
$checksum = 'F5CE4F5D502CDDC5572DBEAF64B28E738AC2CC2C57056D9281890C35F6BFC8A8'
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
							 