$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/imagecacheviewer.zip'
  checksum       = 'b1c5296ac572a8b1807a5553c153445f18ba66ed381174e95c6645499027ae05'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ImageCacheViewer'
}
Install-ChocolateyZipPackage @packageArgs
