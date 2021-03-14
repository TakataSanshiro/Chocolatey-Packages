$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v2.7.1/Simplenote-win-2.7.1.exe'
  checksum       = 'fda5f7cb1d4f1f74ca7e7b0d4e0413598e5f0ff392b745541847a6fc5fd2556d'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
