$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/10.0.18/tor-win32-0.4.5.9.zip'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/10.0.18/tor-win64-0.4.5.9.zip'
  checksum       = '8e9bfe553d030671f116075f6115e3a8ea8de22dc3656d63843070eb6806db9b'
  checksum64     = '27d70f9b35412c2fc24a20a7c7a45c055d73934fb382b0534a8c758713921c3f'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
