$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/chromecookiesview.zip'
  checksum       = '0b9ddd8c34765dbc00177f20ca58728f44bb6222ca9cca3f969662bbc49c7ad0'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ChromeCookiesView'
}
Install-ChocolateyZipPackage @packageArgs
