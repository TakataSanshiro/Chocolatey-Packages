$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v2.10.0/Simplenote-win-2.10.0.exe'
  checksum       = '81d2c6a74b4a2b5a7ea9958b2bcddf7c9c0fd0fefe7260801bc67ab0062b21bf'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
