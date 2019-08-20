$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v3.2.1/tagspaces-win-x64-3.2.1.zip'
  checksum       = 'e18efb3f570cb1779347e95eccbbbcd48d5421a353c3f5220e607031b4c5e9c7'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
