$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.3.2/tagspaces-win-x64-5.3.2.zip'
  checksum       = '31f98818d06df30857518c6e370bc3d1b961e34d82a0907b1fe501b3a1b1e44d'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
