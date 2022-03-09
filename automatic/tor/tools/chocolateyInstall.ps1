$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/11.0.7/tor-win32-0.4.6.10.zip'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/11.0.7/tor-win64-0.4.6.10.zip'
  checksum       = '9c7be9e0c62a8e98b4cac161bdd0f65b8f8163a0045e654c626a4eda127ed819'
  checksum64     = '8eb81cae2a54103483c2740c22c75bdd01f646a3c38e88a011da4e4bafbd34e6'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
