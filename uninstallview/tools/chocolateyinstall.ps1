$ErrorActionPreference = 'Stop';

$packageName = 'uninstallview'
$url = 'https://www.nirsoft.net/utils/uninstallview.zip' 
$url64 = 'https://www.nirsoft.net/utils/uninstallview-x64.zip' 
$checksum = '237DECF5EB83DC501FDB7BE3B8396C547F04944ECCA1885DC1F4E7F1EB72A2E3'
$checksum64 = 'C7A06702AEAF7F181297118C2F918102A3E68A1D7600E28599AA8E6E5B48E34F'
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
							 