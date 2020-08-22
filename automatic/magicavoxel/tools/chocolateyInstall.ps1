$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'magicavoxel'
  url            = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.6/MagicaVoxel-0.99.6-win32.zip'
  url64          = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.6/MagicaVoxel-0.99.6-win64.zip'
  checksum       = '4D6D8B277C2C2C5911B3F3B7BE680E6368C7E7CE7754ABA8EFD847A14A826E54'
  checksum64     = '2DE37D619ECC53F411CFCF914329685D57903288D2B993F9E5C3EC906521A9C2'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'MagicaVoxel'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
