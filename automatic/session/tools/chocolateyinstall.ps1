$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.6.6/session-desktop-win-1.6.6.exe'
  checksum       = '1692ff44e625bb50cf6d9e970e5c488e00308d4f9815595b36656b38cbf85994'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
