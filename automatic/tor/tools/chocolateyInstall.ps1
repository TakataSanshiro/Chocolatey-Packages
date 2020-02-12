$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/9.0.5/tor-win32-0.4.2.6.zip'
  checksum       = 'bc5675615660fa40614833a6baaaf608a8095fded0a2cd7e75c0d7e5bf2145ec'
  checksumType   = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
