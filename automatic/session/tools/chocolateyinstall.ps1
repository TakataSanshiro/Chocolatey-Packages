$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.12.5/session-desktop-win-x64-1.12.5.exe'
  checksum       = '26a19e3b117a07281dc3d89ff40a83ca8866809620d5d90bf6babf81e0b5034e'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
