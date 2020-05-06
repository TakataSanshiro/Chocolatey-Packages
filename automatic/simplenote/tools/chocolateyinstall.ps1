$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v1.16.0/Simplenote-win-1.16.0.exe'
  checksum       = 'cfe170bffab96f5f24decacf292deee27aa0d5b2eca94de0b20ac9e7f1e843b7'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
