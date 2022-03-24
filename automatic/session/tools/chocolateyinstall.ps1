$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.8.3/session-desktop-win-1.8.3.exe'
  checksum       = 'fd449a29b62efa4f3d09710938da1683505c49d1e7de1a15d9ab44f0cc522ecc'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
