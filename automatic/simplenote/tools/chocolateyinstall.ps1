$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v2.18.0/Simplenote-win-2.18.0.exe'
  checksum       = '3e0601960ee8b825f00c6578c1f10018b36cfa182e13050f271c55f7a988eb5c'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
