$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v6.0.2/tagspaces-win-x64-6.0.2.zip'
  checksum       = '18fcbaf7bb64f7814558eb354ad14eea4aedd8a4e045793144eb969098f1a6a2'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
