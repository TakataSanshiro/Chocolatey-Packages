$ErrorActionPreference = 'Stop';

$packageName = 'uninstallview'
$url = 'https://www.nirsoft.net/utils/uninstallview.zip' 
$url64 = 'https://www.nirsoft.net/utils/uninstallview-x64.zip' 
$checksum = 'C40B72FC8423CDFA5C24D68FFBDB49B787AC26E45DDA62FE3C8FB2D1327AA130'
$checksum64 = 'A5D9AE88B52FC902B1ACC0B3D1CF7FDA44E960B519E68DC8B7595A6F21B0C138'
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
							 