$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v3.11.6/tagspaces-win-x64-3.11.6.zip'
  checksum       = '77e8da50ad762c8dc59b3b5699810013af80d9a6f2a0db84e7a62bc60c18f58e'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
