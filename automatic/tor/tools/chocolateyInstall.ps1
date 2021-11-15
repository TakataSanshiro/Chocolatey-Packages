$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/11.0/tor-win32-0.4.6.8.zip'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/11.0/tor-win64-0.4.6.8.zip'
  checksum       = 'dfa04946951fdd093b3ef764923a7db92a7141fab8f75822ae9a87ed1334fb48'
  checksum64     = '8603f86409d7400b536f3da29d21a233b668294521751b30a38108719fda3fe7'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
