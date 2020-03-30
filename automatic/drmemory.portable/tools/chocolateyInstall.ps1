$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'drmemory.portable'
  url            = 'https://github.com/DynamoRIO/drmemory/releases/download/release%5F2.3.18351/DrMemory-Windows-2.3.18351.zip'
  checksum       = '3365bc698fe63d47164dedc54f0529f2a37dab5a903840e64c56f5612d9f9a15'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'drmemory.portable*'
}
Install-ChocolateyZipPackage @packageArgs
