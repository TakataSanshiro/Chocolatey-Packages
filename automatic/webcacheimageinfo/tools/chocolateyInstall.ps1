$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/webcacheimageinfo.zip'
  checksum       = '079757d81aafa7ef09a3a7bc98ee1fb6a3666a0580ce3a9fe8195c37e3837919'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'WebCacheImageInfo'
}
Install-ChocolateyZipPackage @packageArgs
