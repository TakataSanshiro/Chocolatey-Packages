$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.11.2/session-desktop-win-x64-1.11.2.exe'
  checksum       = '91C04267A9B0011D4BF02290236B551E3D9354ACD3A5821BD15397F0D3923823'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
