$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/webcacheimageinfo.zip'
  checksum       = 'b5c2570f9db88197119d3c0861fd467e676e39d4662793c1136e14449ffcf9db'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'WebCacheImageInfo'
}
Install-ChocolateyZipPackage @packageArgs
