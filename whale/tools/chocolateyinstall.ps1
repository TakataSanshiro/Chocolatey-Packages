$ErrorActionPreference = 'Stop';

$packageName = 'whale'
$url = 'https://github.com/1000ch/whale/releases/download/v0.14.0/Whale-windows-v0.14.0.zip'
$checksum = 'B84339FE64A0D69BFC8F3FF06284B354F911619F4A2831CAC164C0E33A8EADED'
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
							 