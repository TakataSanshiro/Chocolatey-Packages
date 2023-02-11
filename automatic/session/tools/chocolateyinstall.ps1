$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.10.7/session-desktop-win-1.10.7.exe'
  checksum       = '01c7ab392cf8122a2914ee9681b07050e31d8b947cc1719ad19e9867c8f8933a'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
