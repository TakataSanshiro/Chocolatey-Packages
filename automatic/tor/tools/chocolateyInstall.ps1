$ErrorActionPreference = 'Stop';

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/14.0.6/tor-expert-bundle-windows-i686-14.0.6.tar.gz'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/14.0.6/tor-expert-bundle-windows-x86_64-14.0.6.tar.gz'
  checksum       = 'e09c2ec4e64e38d75cea928a6e3d18794edf798358c0be5a329e69504bdd85d6'
  checksum64     = '704cb7bc1ac4d5db56c955f3e40f4567d0abd9982fce4184e5bfe689d5c65052'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
Get-ChocolateyUnzip -FileFullPath "$toolsDir\*tar" -Destination $toolsDir
Remove-Item $toolsDir\*.tar -ea 0
