$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v2.8.0/Simplenote-win-2.8.0.exe'
  checksum       = 'ebb7837146b5c31d66f0d8df6b28be24ec20c0e6a7846edb1dd1d0ee3ed0dde9'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
