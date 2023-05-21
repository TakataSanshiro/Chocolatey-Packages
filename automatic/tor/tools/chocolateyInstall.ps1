$ErrorActionPreference = 'Stop';

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/12.0.6/tor-expert-bundle-12.0.6-windows-i686.tar.gz'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/12.0.6/tor-expert-bundle-12.0.6-windows-x86_64.tar.gz'
  checksum       = '450507aef3a2a7217f14edccc3b596a3f15057e197418218ea15d2023f478fd5'
  checksum64     = '6a6125859291e26e0203473ea8aba0fed011ea96f2978d3bf4c62552e205e53a'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
Get-ChocolateyUnzip -FileFullPath "$toolsDir\*tar" -Destination $toolsDir
Remove-Item $toolsDir\*.tar -ea 0
