$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v2.12.0/Simplenote-win-2.12.0.exe'
  checksum       = 'bdb4bb6f38ec3b1622d08c53bd811ce3a59525669b574e0a9d80f8d7e2e4bb68'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
