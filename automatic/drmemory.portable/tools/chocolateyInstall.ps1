$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'drmemory.portable'
  url            = 'https://github.com/DynamoRIO/drmemory/releases/download/release_2.3.0/DrMemory-Windows-2.3.0-1.zip'
  checksum       = '676186a24f7b0d3cbe58aaffadb68efc8b0eae7a743ac485363ef7c1a4665d5c'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'drmemory.portable*'
}
Install-ChocolateyZipPackage @packageArgs
