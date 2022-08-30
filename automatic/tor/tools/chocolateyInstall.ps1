$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/11.5.2/tor-win32-0.4.7.10.zip'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/11.5.2/tor-win64-0.4.7.10.zip'
  checksum       = '114d5a4b2915d940bdc913287a2e54ed8aef79bce092c370b1c849842045369c'
  checksum64     = 'e19c99b52eb152e45daf62b86d8b11462cb44bf2fc2485f2636f8d193b284ee6'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
