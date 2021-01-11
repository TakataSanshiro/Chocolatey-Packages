$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wickr'
  installerType  = 'msi'
  url            = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-5.70.4.msi'
  checksum       = '731c93991e180c3e2a5600c75739d242f9f050c15f881d80e41c0d51f9d5a421'
  checksumType   = 'sha256'
  silentArgs     = '/qb'
  validExitCodes = @(0)
  softwareName   = 'Wickr'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
