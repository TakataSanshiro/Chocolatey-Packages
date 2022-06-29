$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'exifdataview'
  url            = 'https://www.nirsoft.net/utils/exifdataview.zip'
  checksum       = '0f45ca559056837401f3934a39db0b74ba24ecfde97dc6bc2e7211f2ae9e7e47'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ExifDataView'
}
Install-ChocolateyZipPackage @packageArgs
