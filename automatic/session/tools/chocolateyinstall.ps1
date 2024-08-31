$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.13.2/session-desktop-win-x64-1.13.2.exe'
  checksum       = '4ca22a2003b749ec963a7556bcfa82c5b74e35941f03f5addac40e384e2a1b6e'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
