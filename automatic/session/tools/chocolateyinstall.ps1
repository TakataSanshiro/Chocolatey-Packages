$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.6.1/session-desktop-win-1.6.1.exe'
  checksum       = '56d4889039c042b9f399b63a1fa40ceb58c44bb8655b0a914de2c44578aadc6b'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
