$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'processing'
  url            = 'https://github.com/processing/processing4/releases/download/processing-1296-4.3.3/processing-4.3.3-windows-x64.zip'
  checksum       = '9c5ecee3d85c3f86533b79ffcaa3434daccb2c33f580e60782f6ce019ffa8ccb'
  checksumType   = 'sha256'
  softwareName   = 'Processing*'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
