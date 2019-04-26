$ErrorActionPreference = 'Stop';

$packageName = 'drmemory'
$url = 'https://github.com/DynamoRIO/drmemory/releases/download/cronbuild-2.1.17972/DrMemory-Windows-2.1.17972-1.zip' 
$checksum = '6BBCD41F4CC8AFD5C70AB0A8736F9E8CF37B5CE27A6EB1610CC295950EA10817'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
