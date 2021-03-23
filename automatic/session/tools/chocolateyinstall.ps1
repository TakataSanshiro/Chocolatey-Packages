$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.5.1/session-desktop-win-1.5.1.exe'
  checksum       = 'bff33784e90d60e7767f26c6eb6ab11a4df410b024a7175d102f6267ee33d4f4'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
