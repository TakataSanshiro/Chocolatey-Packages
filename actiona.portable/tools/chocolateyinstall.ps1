$ErrorActionPreference = 'Stop';

$packageName = 'actiona.portable'
$url = 'https://jmgr.net/download/130/actiona-3.9.4-windows-32bit.7z' 
$url64 = 'https://jmgr.net/download/131/actiona-3.9.4-windows-64bit.7z'
$checksum = '2787CF85679ABC9E6ECCC56C5A4EAC116230B60D86D0BE9D8CFD649EF031A3B9'
$checksum64 = 'F0C658A9C1219048B8059D9900DCBC361A3E2406EF885A001134EB2C2613C799'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Url64bit "$url64" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"
