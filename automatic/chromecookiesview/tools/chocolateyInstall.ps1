$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/chromecookiesview.zip'
  checksum       = 'd8555fcd69243037decf6b7d7b0b0d8d083477946236ccae78f485311f53e811'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ChromeCookiesView'
}
Install-ChocolateyZipPackage @packageArgs
