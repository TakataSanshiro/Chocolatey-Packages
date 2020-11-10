$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v3.7.5/tagspaces-win-x64-3.7.5.zip'
  checksum       = 'dd3a36c345c5c30e7bbddb056a48089cc60a9753b8a1164b853cdef250930b08'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
