$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'magicavoxel'
  url            = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.6/MagicaVoxel-0.99.6.2-win32.zip'
  url64          = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.6/MagicaVoxel-0.99.6.2-win64.zip'
  checksum       = 'AB6CA0D2A6DEC93FB362BD5184FDE1CE23287B695ECED3021809BD302566630F'
  checksum64     = '169DCDDBEA7DAD30C0713D9CA211D445525501ACEB9E12C8A6B51E7AFAD11420'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'MagicaVoxel'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
