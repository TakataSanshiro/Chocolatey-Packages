$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'zerofill'
  url            = 'https://sourceforge.net/projects/nikkhokkho/files/ZEROFILL/1.08/ZEROFILL.ZIP/download'
  checksum       = '6fc1c6290a0031729eb9e2df0307775e72e7eb1ddf84d0d0ee05dca454f21599'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ZEROFILL'
}
Install-ChocolateyZipPackage @packageArgs
