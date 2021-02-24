$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/10.0.12/tor-win32-0.4.5.6.zip'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/10.0.12/tor-win64-0.4.5.6.zip'
  checksum       = '13d8e273fed46d8344c40bb1503e425b5ad245334eed198938c6f7de3650db87'
  checksum64     = '89ccf98894f3e7ad7d1da235d84efc2933a17030184ff91a992674613511cb9a'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
