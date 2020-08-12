$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v1.21.0/Simplenote-win-1.21.0.exe'
  checksum       = '4a8dccdac46c9294b85659ce282d0fb046862253ffdea8bc141a1736e5c4ad1c'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
