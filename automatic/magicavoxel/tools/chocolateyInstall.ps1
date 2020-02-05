$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'magicavoxel'
  url            = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.4/MagicaVoxel-0.99.4.2-alpha-win32.zip'
  url64          = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.4/MagicaVoxel-0.99.4.2-alpha-win64.zip'
  checksum       = 'A28558A0DB69691B7D4B46A750C08D8EDE6EE8EC7044C04615B130EB7205113F'
  checksum64     = '1E52C08448527814AECC3FA2C1051AD9401A9CE43DFBB86CE03CD74E6FE81820'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'MagicaVoxel'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs