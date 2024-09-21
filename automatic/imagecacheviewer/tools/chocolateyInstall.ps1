$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/imagecacheviewer.zip'
  checksum       = '5ab69af718d8dbdbf61826fc6dfd31a302dae0966a15517d5eb2c9e9046b4996'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ImageCacheViewer'
}
Install-ChocolateyZipPackage @packageArgs
