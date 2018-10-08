$ErrorActionPreference = 'Stop';

$packageName = 'dnspy'
$url = 'https://github.com/0xd4d/dnSpy/releases/download/v5.0.0/dnSpy.zip' 
$checksum = '9930E3B3E460D3082F23ABD7EBFB1C00B6666667F9D7CC03C03EA6B3C6AB404B'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"