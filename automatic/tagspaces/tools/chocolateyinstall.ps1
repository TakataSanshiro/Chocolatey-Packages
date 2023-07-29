$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.4.6/tagspaces-win-x64-5.4.6.zip'
  checksum       = '71bb8807936d2acf016c7e06680ddee67b380c2ca2fcf56e0f2431c3c293ef90'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
