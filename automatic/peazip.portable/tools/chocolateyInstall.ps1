$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/peazip/PeaZip/releases/download/9.6.0/peazip_portable-9.6.0.WINDOWS.zip'
  url64          = 'https://github.com/peazip/PeaZip/releases/download/9.6.0/peazip_portable-9.6.0.WIN64.zip'
  checksum       = '0fbd16348e26372fb6eabfa7af307463e32912b114c9e986a3eb34ac8817322f'
  checksum64     = '654d0098c790d00b1ab1d7b4d6c59a854e4ccb30eeeb868906c98823fc44bef3'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'peazip.portable'
}
Install-ChocolateyZipPackage @packageArgs
