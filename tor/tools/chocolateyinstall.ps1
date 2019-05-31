$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tor'
  url            = 'https://www.torproject.org/dist/torbrowser/8.5/tor-win32-0.3.5.8.zip'
  checksum       = '012D5495AE9CAC276414DFA15E8BE558542B447FA4EFE4D380B0061A992DBE0A'
  checksumType   = 'sha256'
  softwareName   = 'Tor'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs