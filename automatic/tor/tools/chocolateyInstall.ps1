$ErrorActionPreference = 'Stop';

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/14.0.2/tor-expert-bundle-windows-i686-14.0.2.tar.gz'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/14.0.2/tor-expert-bundle-windows-x86_64-14.0.2.tar.gz'
  checksum       = '2d8e4cd6b9b109a8b1595eb7bb298bd770fd7429d42c8e8af9332d3fbee9096c'
  checksum64     = '990d37aedcfbeb63b75620a17ab79618b4a9c53b08ea3b8acca518f0546f3b18'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
Get-ChocolateyUnzip -FileFullPath "$toolsDir\*tar" -Destination $toolsDir
Remove-Item $toolsDir\*.tar -ea 0
