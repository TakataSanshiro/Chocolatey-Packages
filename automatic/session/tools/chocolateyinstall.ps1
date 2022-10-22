$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.10.3/session-desktop-win-1.10.3.exe'
  checksum       = 'ee65d477185a8969b54af0aa03090fdd039966a8b0157d9e5310c2e91c251d27'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
