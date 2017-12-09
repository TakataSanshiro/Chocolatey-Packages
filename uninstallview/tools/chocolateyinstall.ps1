$ErrorActionPreference = 'Stop';

$packageName = 'uninstallview'
$url = 'https://www.nirsoft.net/utils/uninstallview.zip' 
$url64 = 'https://www.nirsoft.net/utils/uninstallview-x64.zip' 
$checksum = '1E3F1B152011A9F75DCDB18B25ED3DF5CE66919DEC0A60315453EF371656CF9B'
$checksum64 = '4E3B9E75D0556027DD08340055FDF074EB4B28AEDB609E895606112B539D4E4D'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir\UninstallView" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"`
							 -Url64bit "$url64" `
							 -Checksum64 "$checksum64" `
							 -ChecksumType64 "$checksumType64"
							 
# Create a portable execution file shotcut at the desktop.
Install-ChocolateyShortcut   -ShortcutFilePath "$Home\Desktop\UninstallView.lnk" `
						     -TargetPath "$toolsDir\UninstallView\UninstallView.exe"
							 