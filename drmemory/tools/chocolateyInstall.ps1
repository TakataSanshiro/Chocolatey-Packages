$ErrorActionPreference = 'Stop';

$packageName = 'drmemory'
$url = 'https://github.com/DynamoRIO/drmemory/releases/download/cronbuild-2.0.17959/DrMemory-Windows-1.11.17959-1.zip' 
$checksum = '2B94346B80C5388EC480EAD15247F0CB5FB21580E2870EFD1BC8EAE01B2BAD45'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
