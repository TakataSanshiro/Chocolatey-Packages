$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/netrouteview.zip'
  checksum       = '266d4972ef251f950d63f3c5491da99dffceb3c505f7d8118fc9eccdb476101a'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetRouteView'
}
Install-ChocolateyZipPackage @packageArgs
