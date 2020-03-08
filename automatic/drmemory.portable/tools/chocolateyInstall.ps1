$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'drmemory.portable'
  url            = 'https://github.com/DynamoRIO/drmemory/releases/download/release%5F2.3.18322/DrMemory-Windows-2.3.18322.zip'
  checksum       = '7ee701980d3d3f5b12ec1272f087fe59aacb0fe81a1613267e27d5e248bf76f4'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'drmemory.portable*'
}
Install-ChocolateyZipPackage @packageArgs
