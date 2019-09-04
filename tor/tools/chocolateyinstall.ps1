$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/8.5.5/tor-win32-0.4.1.5.zip'
  checksum       = 'F7358377E328012B1A057E1C75B5BDB2F171201E574622C78576F17495C49CA4'
  checksumType   = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs