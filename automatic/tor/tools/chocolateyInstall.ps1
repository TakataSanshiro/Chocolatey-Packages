$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/9.5.3/tor-win32-0.4.3.6.zip'
  checksum       = 'd87b78789751b75379132c2cc21d48e4ca2c16192708667d373b830c1477ea9e'
  checksumType   = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
