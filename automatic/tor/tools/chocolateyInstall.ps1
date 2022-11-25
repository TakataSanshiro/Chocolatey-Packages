$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/11.5.8/tor-win32-0.4.7.11.zip'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/11.5.8/tor-win64-0.4.7.11.zip'
  checksum       = 'c9494749f02493bf3d53c849f9672fda5426f90b1c34d81237a0bc24c0c6993a'
  checksum64     = 'f86b07027cc46f352eeae4666a5190a54ffc4e90ca2aa29e1c8231c2afe8ed34'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
