$ErrorActionPreference = 'Stop';

$packageName = 'drmemory.portable'
$url = 'https://github.com/DynamoRIO/drmemory/releases/download/release_1.11.0/DrMemory-Windows-1.11.0-2.zip' 
$checksum = 'BAB2AE2A59238DE29B6B12E0CAC9F1F9B97328F9DE2CE5DA76D397DBBB2B8872'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
