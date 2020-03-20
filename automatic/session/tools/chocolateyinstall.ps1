$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.0.5/session-messenger-desktop-win-1.0.5.exe'
  checksum       = '48e5dd91939d67738f570bdac7daf53a22537d12d5dbf6e87052260273e3da01'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
