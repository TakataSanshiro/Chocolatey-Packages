$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.0.5/tagspaces-win-x64-5.0.5.zip'
  checksum       = 'ae804c5aabbb6c05e14e31a180e3eea7b8b0b8310d1d2353dd425a2b7851dd8d'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
