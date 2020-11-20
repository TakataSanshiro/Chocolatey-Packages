$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/10.0.5/tor-win32-0.4.4.6.zip'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/10.0.5/tor-win64-0.4.4.6.zip'
  checksum       = 'e42d0fb5440da4ca4a8fe661cd10db52d3f2a432acf3dd80f2d558ac702f68a3'
  checksum64     = '9ac20dec529edcc92547862ec2371e32011e5dcba8e22dfab0ff46dd4c3e9f74'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
