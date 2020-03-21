$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wickr'
  installerType  = 'msi'
  url            = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-5.50.6.msi'
  checksum       = 'D2A76DB85BCF076858C1969CF43689AC43D37CC2A01B5D2AB4714DEAD8D0E5FF'
  checksumType   = 'sha256'
  silentArgs     = '/qb'
  validExitCodes = @(0)
  softwareName   = 'Wickr'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
