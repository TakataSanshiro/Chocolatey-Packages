$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/10.5.5/tor-win32-0.4.5.10.zip'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/10.5.5/tor-win64-0.4.5.10.zip'
  checksum       = '08fb4439449357d3605d51250871dbeb197f59dbddc35ef4d0c1539184ef664c'
  checksum64     = 'b97141039f4442914f611423e0aa41a3c60a70cdc6040d676a433ad9f3d243f9'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
