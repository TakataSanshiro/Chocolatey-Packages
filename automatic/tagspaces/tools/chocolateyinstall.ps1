$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.3.3/tagspaces-win-x64-5.3.3.zip'
  checksum       = '712a863cf0f48dd5a882638bb7d0085ecc6bd47d0b95436c1352c70ae2460a7c'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
