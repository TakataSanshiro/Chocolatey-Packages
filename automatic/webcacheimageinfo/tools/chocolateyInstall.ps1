$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/webcacheimageinfo.zip'
  checksum       = '6d1c7903a265bcc12d463acd1974b90d5b46e30093f19e18ef4d4544e1cdd2d5'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'WebCacheImageInfo'
}
Install-ChocolateyZipPackage @packageArgs
