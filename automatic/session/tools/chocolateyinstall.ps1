$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.14.1/session-desktop-win-x64-1.14.1.exe'
  checksum       = 'd509e5f9905cf5ff4a28ab26a33772d9a0729142f8b13185eabf710940173d1c'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
