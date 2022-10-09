$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.0.2/tagspaces-win-x64-5.0.2.zip'
  checksum       = 'd2546b8e9e30fec6cddb25f3b88a0b76e3f72f1affb49653bda3ccc38b711d7d'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
