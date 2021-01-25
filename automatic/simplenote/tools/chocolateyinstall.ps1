$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v2.5.0/Simplenote-win-2.5.0.exe'
  checksum       = '58efde99358a8a25dd6b3acbd6cee2f1fa1ea7cd32d546fef78e6da29e4c9468'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
