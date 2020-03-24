$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/9.0.7/tor-win32-0.4.2.7.zip'
  checksum       = '184882e2bdf0f7c11960cd8e12164d875a1fbe0622d39469fbbf6f30812211f2'
  checksumType   = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
