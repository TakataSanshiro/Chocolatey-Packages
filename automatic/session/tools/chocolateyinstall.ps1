$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.7.6/session-desktop-win-1.7.6.exe'
  checksum       = 'a25b02cdd8e1c97dc92bc3210f2144775f1fbf727cdd2cad5c4006840b92cc5d'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
