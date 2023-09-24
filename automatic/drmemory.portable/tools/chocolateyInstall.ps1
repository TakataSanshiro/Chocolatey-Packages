$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'drmemory.portable'
  url            = 'https://github.com/DynamoRIO/drmemory/releases/download/release%5F2.6.0/DrMemory-Windows-2.6.0.zip'
  checksum       = '07632ab77856579d06e30de344c669e9bdcbde9688b6ef43e84d31c39c6e46b2'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'drmemory.portable*'
}
Install-ChocolateyZipPackage @packageArgs
