$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'magicavoxel'
  url            = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.5/MagicaVoxel-0.99.5-alpha-win32.zip'
  url64          = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.5/MagicaVoxel-0.99.5-alpha-win64.zip'
  checksum       = '36c45399b8e26502b546c035d2391259818607e5d9f2918d01454ebb1bd4c37e'
  checksum64     = '5a6dadae3839bbc6296e04dc8e15f0a7e63697e33a0b85710efef1efb827698b'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'MagicaVoxel'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
