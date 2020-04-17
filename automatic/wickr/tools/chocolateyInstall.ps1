$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wickr'
  installerType  = 'msi'
  url            = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-5.52.9.msi'
  checksum       = 'bfd26e02b15fc702ef1e9d0580fc443edf90bd9d787ec9396b264b09ec793556'
  checksumType   = 'sha256'
  silentArgs     = '/qb'
  validExitCodes = @(0)
  softwareName   = 'Wickr'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
