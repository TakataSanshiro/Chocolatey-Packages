$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wickr'
  installerType  = 'msi'
  url            = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-5.76.13.msi'
  checksum       = '5c443e05d3c5f032d8fbf1565457f04fbc330ec778cf7f282c32cafeb38f3bb0'
  checksumType   = 'sha256'
  silentArgs     = '/qb'
  validExitCodes = @(0)
  softwareName   = 'Wickr'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
