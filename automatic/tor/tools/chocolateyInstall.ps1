$ErrorActionPreference = 'Stop';

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/13.0.6/tor-expert-bundle-windows-i686-13.0.6.tar.gz'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/13.0.6/tor-expert-bundle-windows-x86_64-13.0.6.tar.gz'
  checksum       = '97b7b3314c8f06e4220c2033e621dedc068bbdf35f81cf7fa0b1e554c1a2c1ac'
  checksum64     = 'e3b885da9a53c3c734ddf1683deb520d545f899748d8f53f143d3a545a2ef1e9'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
Get-ChocolateyUnzip -FileFullPath "$toolsDir\*tar" -Destination $toolsDir
Remove-Item $toolsDir\*.tar -ea 0
