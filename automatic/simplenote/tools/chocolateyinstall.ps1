$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v1.15.0/Simplenote-win-1.15.0.exe'
  checksum       = '6a5ea6c0838715fcf5a88b8b6f3c815914b651f2726ef3e32837481e0dd98bd6'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
