$ErrorActionPreference = 'Stop';

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/13.0.16/tor-expert-bundle-windows-i686-13.0.16.tar.gz'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/13.0.16/tor-expert-bundle-windows-x86_64-13.0.16.tar.gz'
  checksum       = 'bc8aa3084a497665af5487ebb19f2dbfbaf020337960435aa46e09087656190c'
  checksum64     = 'be45febce2968b2dbe2f9791739ced1b9bb887d76f6b8abf234676b66430c539'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
Get-ChocolateyUnzip -FileFullPath "$toolsDir\*tar" -Destination $toolsDir
Remove-Item $toolsDir\*.tar -ea 0
