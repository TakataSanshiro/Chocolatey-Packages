$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/11.0.3/tor-win32-0.4.6.9.zip'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/11.0.3/tor-win64-0.4.6.9.zip'
  checksum       = '1a89145369c489b73b86db401d1a1232bf4901d6067c926e32f519ea1655026e'
  checksum64     = 'fabb46fb0b82c7cd3592c96554ffd8c0766b2e467559e3613b3e14ac191aed19'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
