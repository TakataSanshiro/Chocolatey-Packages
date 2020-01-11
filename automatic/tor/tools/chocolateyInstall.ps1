$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/9.0.4/tor-win32-0.4.2.5.zip'
  checksum       = 'ce6bc27dd36e53f01e4ba6cf93bdb0600f5c6eafcf602f1aaae9262dcb1e3549'
  checksumType   = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
