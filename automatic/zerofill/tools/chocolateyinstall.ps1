$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'zerofill'
  url            = 'https://sourceforge.net/projects/nikkhokkho/files/ZEROFILL/1.07/ZEROFILL.ZIP/download'
  checksum       = '231aedeb6cfd84f3ea68c440aeb2cdc6ce03ccfee838b31115056451a864ea38'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ZEROFILL'
}
Install-ChocolateyZipPackage @packageArgs
