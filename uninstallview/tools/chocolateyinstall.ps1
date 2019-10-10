$ErrorActionPreference = 'Stop';

$packageName    = 'uninstallview'
$url            = 'https://www.nirsoft.net/utils/uninstallview.zip' 
$url64          = 'https://www.nirsoft.net/utils/uninstallview-x64.zip' 
$checksum       = '44E64FEEFBA7C00C548D9B4ECDC35C90AA8455FD1619F527BFF3742F54019526'
$checksum64     = 'E4ECD9B59C55BEE08F7AD4317926CBE5D5EEB363FDB3450A587F49E68D3AA1C6'
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
							 