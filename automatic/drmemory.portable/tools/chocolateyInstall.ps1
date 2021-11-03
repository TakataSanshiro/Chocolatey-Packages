$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'drmemory.portable'
  url            = 'https://github.com/DynamoRIO/drmemory/releases/download/release%5F2.5.0/DrMemory-Windows-2.5.0.zip'
  checksum       = '1be5c92a0a5ee29c1c0506ddb8d5fb9ddec15ff7c9dbba379fc633e7fe405f87'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'drmemory.portable*'
}
Install-ChocolateyZipPackage @packageArgs
