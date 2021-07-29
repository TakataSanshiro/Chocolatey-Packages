$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.6.9/session-desktop-win-1.6.9.exe'
  checksum       = 'eca70e5cafa69f022c89e049e337b0ee0c24f307a991859c1b8b0b5e2870ef1c'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
