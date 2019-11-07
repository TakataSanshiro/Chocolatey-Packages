$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v1.10.0/Simplenote-win-1.10.0.exe'
  checksum       = '858b9ae8c0de57715af89d84d4e7854a52f3f7f6fcfcacab1ec78a612a538834'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
