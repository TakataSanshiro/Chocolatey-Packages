$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v3.11.9/tagspaces-win-x64-3.11.9.zip'
  checksum       = '9c4d0e2a8232dd112284f383398f1a266c3c9904239068435bd545bb4f9cf4d0'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
