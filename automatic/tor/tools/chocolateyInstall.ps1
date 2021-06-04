$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/10.0.17/tor-win32-0.4.5.8.zip'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/10.0.17/tor-win64-0.4.5.8.zip'
  checksum       = '404b1919adac3a163694e44fe8cd7795b4ce4d1f35245065bc9469b3d88c0de3'
  checksum64     = '7510c90d8ca86c1a14b52b0232253176b16ef614cb592f76c66a6d996164c720'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
