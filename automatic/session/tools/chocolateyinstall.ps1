$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.5.5/session-desktop-win-1.5.5.exe'
  checksum       = '8f0316db6405c6d6fb20dfa3c7ad1e17fed25613171a2756236717a43025e9f8'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
