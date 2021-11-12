$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'magicavoxel'
  url64          = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.6/MagicaVoxel-0.99.6.4-win64.zip'
  checksum64     = 'FD2B64141CC5E33A01CE807008A3739BF3C86C30E78FB1B1F8D855EBFF5AF8BD'
  checksumType64 = 'sha256'
  softwareName   = 'MagicaVoxel'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
