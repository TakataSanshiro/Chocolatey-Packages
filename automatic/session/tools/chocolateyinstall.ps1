$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.10.8/session-desktop-win-1.10.8.exe'
  checksum       = '2ff7c2668677177ef7d0bdd5a658f6f71dd6df3b5bd7824d41b3ddbf3d24058f'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
