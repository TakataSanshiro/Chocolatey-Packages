$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'drmemory.portable'
  url            = 'https://github.com/DynamoRIO/drmemory/releases/download/release_2.2.0/DrMemory-Windows-2.2.0-1.zip'
  checksum       = 'fb94511f05375b669f7ee90f374483e2eb199b82004404753fe10a895ca4d9c4'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'drmemory.portable*'
}
Install-ChocolateyZipPackage @packageArgs
