$ErrorActionPreference = 'Stop';

$packageName = 'dnspy'
$url = 'https://github.com/0xd4d/dnSpy/releases/download/v5.0.0/dnSpy.zip' 
$checksum = '7BB51552F1FE447F3D9EAB4F35894B4B19FB28F693325728925553CF4C25DD63'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"