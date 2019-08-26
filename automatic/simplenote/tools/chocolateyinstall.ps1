$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v1.8.0/Simplenote-win-1.8.0.exe'
  checksum       = 'ed3bc9f4fd01cc55e67f9a0c736086b3bc6ec3f62efbce637292f705ce50002b'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
