$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/chromecookiesview.zip'
  checksum       = 'bc063f1728f304da812f5faa047bc22966c55a2012b98b1e43548d902cc95e78'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ChromeCookiesView'
}
Install-ChocolateyZipPackage @packageArgs
