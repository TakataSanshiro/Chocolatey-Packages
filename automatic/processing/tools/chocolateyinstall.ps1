$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'processing'
  url            = 'https://github.com/processing/processing4/releases/download/processing-1293-4.3/processing-4.3-windows-x64.zip'
  checksum       = 'a6b5435581b8e69b0a25de8f62ba572daab85223e6bc10a3e19bd6295d1ea458'
  checksumType   = 'sha256'
  softwareName   = 'Processing*'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
