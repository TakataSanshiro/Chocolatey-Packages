$ErrorActionPreference = 'Stop';

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/12.5.1/tor-expert-bundle-12.5.1-windows-i686.tar.gz'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/12.5.1/tor-expert-bundle-12.5.1-windows-x86_64.tar.gz'
  checksum       = 'eb29a397f760e4456028156afb10033ccc7ceb5e351dffdb7d72a5804caa5b97'
  checksum64     = '14575adcc9b91db6b45cf98827179a10b5e6c63e17a7cc41fea2bfebc4552c7a'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
Get-ChocolateyUnzip -FileFullPath "$toolsDir\*tar" -Destination $toolsDir
Remove-Item $toolsDir\*.tar -ea 0
