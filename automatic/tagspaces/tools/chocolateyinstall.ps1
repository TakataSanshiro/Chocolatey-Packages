$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v3.8.4/tagspaces-win-x64-3.8.4.zip'
  checksum       = 'e75f69f51488fc7a45b6e08bcfa0f6d5ac3b700d3ccbf732ef7f30dc3ff10ea4'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
