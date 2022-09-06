$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'uninstallview'
  url            = 'https://www.nirsoft.net/utils/uninstallview.zip'
  url64          = 'https://www.nirsoft.net/utils/uninstallview-x64.zip'
  checksum       = '49921aa07f9212f1be25dac61874a5add2f2fea0989597e2cbac858abb5d852a'
  checksum64     = 'b328aeadbb8cad602a67c39399e746014878581b6461ea6408b7978cc773d77d'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'Uninstallview'
}
Install-ChocolateyZipPackage @packageArgs
