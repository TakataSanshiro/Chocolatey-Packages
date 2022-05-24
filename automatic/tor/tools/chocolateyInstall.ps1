$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/11.0.13/tor-win32-0.4.7.7.zip'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/11.0.13/tor-win64-0.4.7.7.zip'
  checksum       = '6af0088460d61a5e60971aea94562a3bed2fb597da6b8ac77948a5f6424dfa29'
  checksum64     = 'ba2a8610e13656262bc4b0da33e814f0eff3a32d4e255d4a65a77cd78ed2b3e5'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
