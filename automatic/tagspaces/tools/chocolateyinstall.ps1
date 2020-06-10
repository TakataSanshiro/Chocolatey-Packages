$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v3.5.4/tagspaces-win-x64-3.5.4.zip'
  checksum       = '106a3d966b3b6d9dfac80c94e9ec57d1276c3ad77578f548be4c29ae034b7614'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
