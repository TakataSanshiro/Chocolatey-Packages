$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'drmemory.portable'
  url            = 'https://github.com/DynamoRIO/drmemory/releases/download/release%5F2.3.18609-10/DrMemory-Windows-2.3.18609-10.zip'
  checksum       = '8915fd5e516186d01080cbf80212153cfd7a65e65da9471633dc5d4fd648db0e'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'drmemory.portable*'
}
Install-ChocolateyZipPackage @packageArgs
