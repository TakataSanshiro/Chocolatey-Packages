$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'processing'
  url            = 'https://github.com/processing/processing4/releases/download/processing-1294-4.3.1/processing-4.3.1-windows-x64.zip'
  checksum       = 'd3497bbe3c79dad10c889d97505d719a358ad5fef390c8d4c221919e772fd44c'
  checksumType   = 'sha256'
  softwareName   = 'Processing*'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
