$ErrorActionPreference = 'Stop';

$packageName = 'quickviewer'
$url = 'https://github.com/kanryu/quickviewer/releases/download/v1.1.2/QuickViewer-portable-1.1.2-x86.zip' 
$url64 = 'https://github.com/kanryu/quickviewer/releases/download/v1.1.2/QuickViewer-portable-1.1.2-x64-rev2.zip' 
$checksum = '58C929C81BE6BC6355025C3B9B21C886F49884DC6B6B6183C4E559EAACD1F6E1'
$checksum64 = '859F34E4D2BEB196F734856391FDE3F0B77E2C92F0F09BF46CC1F2C0832E962E'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"`
							               -Url64bit "$url64" `
							               -Checksum64 "$checksum64" `
							               -ChecksumType64 "$checksumType64"