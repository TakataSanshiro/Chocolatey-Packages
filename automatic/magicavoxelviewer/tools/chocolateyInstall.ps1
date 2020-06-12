$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'magicavoxelviewer'
  url            = 'https://github.com/ephtracy/ephtracy%2Egithub%2Eio/releases/download/0.41/MagicaVoxel-Viewer.zip'
  checksum       = '90C09FC708DA95E7BD57FAAB10C86B07FB160AFD25395208FC118B74D0A02BD5'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'MagicaVoxel Viewer'
}
Install-ChocolateyZipPackage @packageArgs
