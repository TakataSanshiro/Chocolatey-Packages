$ErrorActionPreference = 'Stop';

$packageName = 'quickviewer'
$url = 'https://github.com/kanryu/quickviewer/releases/download/v1.1.3/QuickViewer-portable-1.1.3-x86.zip' 
$url64 = 'https://github.com/kanryu/quickviewer/releases/download/v1.1.3/QuickViewer-portable-1.1.3-x64.zip' 
$checksum = 'D2319FFFBC8CBB8536160527A34028CD96217C763663E2C9757835C337815CAA'
$checksum64 = '109C345E53BA501A4AB7EE5306EA7F3116397BA5675EB49BF39CAB935950680B'
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