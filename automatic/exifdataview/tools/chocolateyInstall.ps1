$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'exifdataview'
  url            = 'https://www.nirsoft.net/utils/exifdataview.zip'
  checksum       = 'f244a806e8ef8e1a85df67dfa96e40bbf4cf9196905ebcf18d4a81c91aa69261'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ExifDataView'
}
Install-ChocolateyZipPackage @packageArgs
