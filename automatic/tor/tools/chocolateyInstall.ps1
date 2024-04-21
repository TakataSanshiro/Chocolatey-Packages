$ErrorActionPreference = 'Stop';

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/13.0.14/tor-expert-bundle-windows-i686-13.0.14.tar.gz'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/13.0.14/tor-expert-bundle-windows-x86_64-13.0.14.tar.gz'
  checksum       = '3f389e1fba718e12cb0049aea38cadbfb45678e9d4c92a0d096af57bec6c23ee'
  checksum64     = '7b87acb4d2009eb2642b97bdb72fe0e229345f36ae2aad2d8f2f8cd9274b51a0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
Get-ChocolateyUnzip -FileFullPath "$toolsDir\*tar" -Destination $toolsDir
Remove-Item $toolsDir\*.tar -ea 0
