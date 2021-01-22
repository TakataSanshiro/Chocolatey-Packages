$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.4.7/session-desktop-win-1.4.7.exe'
  checksum       = '2ce981ba9e19eb6d83d4c09f9cdb0ef8ffd0ce6ad18d38be4a405c31bbfbc853'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
