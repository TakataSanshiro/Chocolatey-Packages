$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v3.4.2/tagspaces-win-x64-3.4.2.zip'
  checksum       = '0e896f9eea1b03557a77109aa228c708c5a8a36e860a5e05c2e3347b32cc86c3'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
