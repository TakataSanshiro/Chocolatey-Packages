$ErrorActionPreference = 'Stop';

$packageName    = 'uninstallview'
$url            = 'https://www.nirsoft.net/utils/uninstallview.zip' 
$url64          = 'https://www.nirsoft.net/utils/uninstallview-x64.zip' 
$checksum       = 'EBC476BA2D09E863C4A637B4E59B54FE612D283830786BDEAF445684120146D9'
$checksum64     = '8EF78DB367222E0FA5AEB644702D48C3D62E7A995BAB2067DFDD9DB7939CC5F7'
$checksumType   = 'sha256'
$checksumType64 = 'sha256'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir\UninstallView" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"`
							               -Url64bit "$url64" `
							               -Checksum64 "$checksum64" `
							               -ChecksumType64 "$checksumType64"
							 