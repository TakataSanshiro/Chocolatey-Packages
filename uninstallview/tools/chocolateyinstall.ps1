$ErrorActionPreference = 'Stop';

$packageName = 'uninstallview'
$url = 'https://www.nirsoft.net/utils/uninstallview.zip' 
$url64 = 'https://www.nirsoft.net/utils/uninstallview-x64.zip' 
$checksum = '02A591AF7F94BFA43E5CDE2B9E4ADA0434F1FB05B5C28654A089E9BF1E9761BE'
$checksum64 = '40E9FB2BA031DF8C32B9D4A509B2AA46A0FA80A383A9738A5923CB5ABE0880C6'
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
							 