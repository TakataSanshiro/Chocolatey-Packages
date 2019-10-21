$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v1.9.0/Simplenote-win-1.9.0.exe'
  checksum       = 'd3a2fada2a6fe05bb3b6d36781da3986b81b3c6786d584360eed1b46311711bc'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
