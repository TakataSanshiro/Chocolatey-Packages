$ErrorActionPreference = 'Stop';

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/14.0.9/tor-expert-bundle-windows-i686-14.0.9.tar.gz'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/14.0.9/tor-expert-bundle-windows-x86_64-14.0.9.tar.gz'
  checksum       = '5ad750868d05e6a8ba173c77b74b67a73bd1a283cdabb195b78d12c1ad96a66d'
  checksum64     = 'dce4dfd488ed8220b97c613f08216b63c6895bbefd0d091a3156501f188fe5f4'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
Get-ChocolateyUnzip -FileFullPath "$toolsDir\*tar" -Destination $toolsDir
Remove-Item $toolsDir\*.tar -ea 0
