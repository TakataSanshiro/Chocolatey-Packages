$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/chromecookiesview.zip'
  checksum       = '30e1694c33c599984b46319c276e1bd5438f9898cdb6211e88a35c8129f6aa57'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ChromeCookiesView'
}
Install-ChocolateyZipPackage @packageArgs
