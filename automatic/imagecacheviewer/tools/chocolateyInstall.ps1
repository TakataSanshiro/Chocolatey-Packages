$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/imagecacheviewer.zip'
  checksum       = '5031cde7545ff8b6a902315fb7a09c8cdac09c680bd83a2347cb858ba317fa46'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ImageCacheViewer'
}
Install-ChocolateyZipPackage @packageArgs
