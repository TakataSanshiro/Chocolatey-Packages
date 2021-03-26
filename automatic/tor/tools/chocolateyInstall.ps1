$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://archive.torproject.org/tor-package-archive/torbrowser/10.0.14/tor-win32-0.4.5.7.zip'
  url64          = 'https://archive.torproject.org/tor-package-archive/torbrowser/10.0.14/tor-win64-0.4.5.7.zip'
  checksum       = '7823ac7cc0b7dd3ab971246f1e4e3644382c1637cf02adea0fef5c75f233f994'
  checksum64     = '80dba1264520ddbf886b3ddfee464a5bbcee14e1136490fd44ce163fa990320c'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
