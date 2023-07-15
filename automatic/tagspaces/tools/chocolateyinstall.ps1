$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.4.3/tagspaces-win-x64-5.4.3.zip'
  checksum       = '69d5b1b1e64991fc117a8e1498e3fd935e469484fb96af4e3fecd49025c47dcc'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
