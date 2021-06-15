$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v2.13.0/Simplenote-win-2.13.0.exe'
  checksum       = 'ca5d8b3b6360031efad6664c8a1e97f810437d6e106b7bcd0fbbf2a22f9d6134'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
