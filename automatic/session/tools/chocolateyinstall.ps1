$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.6.11/session-desktop-win-1.6.11.exe'
  checksum       = '6189b9e28111e87f171ac6c8430fa77d9ac79a2e23d3366c8b3a3e50a9c064b1'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
