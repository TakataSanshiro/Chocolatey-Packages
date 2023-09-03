$ErrorActionPreference = 'Stop';

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/12.5.3/tor-expert-bundle-12.5.3-windows-i686.tar.gz'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/12.5.3/tor-expert-bundle-12.5.3-windows-x86_64.tar.gz'
  checksum       = 'b8ca1a4969ff37fa0ef897c6db93434713b20eba405f10accce9a5a408691569'
  checksum64     = '4b1dfc909be98df6d8f3c327412a5bb5675c34f78957f870323c636e05aab437'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
Get-ChocolateyUnzip -FileFullPath "$toolsDir\*tar" -Destination $toolsDir
Remove-Item $toolsDir\*.tar -ea 0
