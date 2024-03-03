$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/imagecacheviewer.zip'
  checksum       = '0a6364bd1a0a62aa29f9ba5a8a16c56fdf194ad9b424b7f2efd76c73e52c9da7'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ImageCacheViewer'
}
Install-ChocolateyZipPackage @packageArgs
