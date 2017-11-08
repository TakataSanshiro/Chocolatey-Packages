$ErrorActionPreference = 'Stop';

$packageName = 'uninstallview'
$url = 'https://www.nirsoft.net/utils/uninstallview.zip' 
$url64 = 'https://www.nirsoft.net/utils/uninstallview-x64.zip' 
$checksum = 'E403BB08005221D4DACFD513C1A897431C26FD460988AB68B2BE4387B6F2DE14'
$checksum64 = '9ABD6ECEFFE0D5DE72F2AC264F79A715E8327BB19FFFB0AF2B3D02BBDB36E151'
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
							 