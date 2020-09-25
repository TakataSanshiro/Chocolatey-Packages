$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/10.0/tor-win32-0.4.4.5.zip'
  checksum       = '058ca6179a8edc375e85449d9a2efcc6742fe1e08ab7571761944229e738fb89'
  checksumType   = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
