$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wickr'
  installerType  = 'msi'
  url            = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-5.65.4.msi'
  checksum       = '41a6899631b60592d2e14804bd22444ecab83570ac229daefa3488ff08e8fc1a'
  checksumType   = 'sha256'
  silentArgs     = '/qb'
  validExitCodes = @(0)
  softwareName   = 'Wickr'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
