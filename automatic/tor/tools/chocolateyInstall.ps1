$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/9.5/tor-win32-0.4.3.5.zip'
  checksum       = '9c4c320224d81a043983d8dd04c8074ef8b35be8f769e6024f6d4f0ecbe23ea3'
  checksumType   = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
