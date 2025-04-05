$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/chromecookiesview.zip'
  checksum       = 'e790a76dc0f36a9d5bf23a0b4ad7e2bf43390e4b533b38f6bada51cb036d3102'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ChromeCookiesView'
}
Install-ChocolateyZipPackage @packageArgs
