$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.3.1/session-messenger-desktop-win-1.3.1.exe'
  checksum       = '3513776a5a86ea1305c1127374da5525b486f9f7855ab7494c477613b75c2eb4'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
