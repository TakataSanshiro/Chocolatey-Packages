$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.0.7/session-messenger-desktop-win-1.0.7.exe'
  checksum       = 'ae3883a5ffd81f1c6d8c48a592bd881d74a154023d18a748fa054258330c8118'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
