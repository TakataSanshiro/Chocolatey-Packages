$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'processing'
  url            = 'https://github.com/processing/processing/releases/download/processing-0270-3.5.4/processing-3.5.4-windows32.zip'
  url64          = 'https://github.com/processing/processing/releases/download/processing-0270-3.5.4/processing-3.5.4-windows64.zip'
  checksum       = 'e29dc633b708759dd376c3d2507f9dc75910543283098bc233f4e355e75090ca'
  checksum64     = 'e7a3f924bc265e926e63e1ea771d1379448b58c2d0671b0f8ddadef1aa6eda0e'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Processing*'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
