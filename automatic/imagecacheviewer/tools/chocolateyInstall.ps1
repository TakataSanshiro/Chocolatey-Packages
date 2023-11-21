$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/imagecacheviewer.zip'
  checksum       = '7af88048f1a24306fd5d0a9004ddff921da92a2f889c8b9b2e788703cca65516'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ImageCacheViewer'
}
Install-ChocolateyZipPackage @packageArgs
