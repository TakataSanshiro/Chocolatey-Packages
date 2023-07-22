$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.11.0/session-desktop-win-1.11.0.exe'
  checksum       = '3124dfda91aed552280ec372053683fc3628fbf72754b2e5edd7670d74406828'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
