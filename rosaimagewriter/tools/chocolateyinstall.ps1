$ErrorActionPreference = 'Stop';

$packageName = 'rosaimagewriter'
$url = 'http://wiki.rosalab.ru/en/images/6/62/RosaImageWriter-2.6.2-win.zip' 
$checksum = 'D3AE532DA5A2C16E3E39DE8986089D32A9B00576EC49745D64F1AB8531D1B28C'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Create an exe shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\RosaImageWriter.lnk" `
						     -TargetPath "$toolsDir\RosaImageWriter\RosaImageWriter.exe"
							 