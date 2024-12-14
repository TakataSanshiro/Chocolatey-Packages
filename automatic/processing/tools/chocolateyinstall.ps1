$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'processing'
  url            = 'https://github.com/processing/processing4/releases/download/processing-1295-4.3.2/processing-4.3.2-windows-x64.zip'
  checksum       = '86affa28eb14aadd307bc476e8f0117613b286dafdf97c91817ec5e067181d98'
  checksumType   = 'sha256'
  softwareName   = 'Processing*'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
