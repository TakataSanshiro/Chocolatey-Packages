$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.6.10/session-desktop-win-1.6.10.exe'
  checksum       = 'c8a4211f2c16f625699712e9cb4816cf91f3664e1e08c782d2644d86e86128de'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
