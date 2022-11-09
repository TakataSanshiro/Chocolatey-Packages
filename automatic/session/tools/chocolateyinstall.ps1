$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.10.4/session-desktop-win-1.10.4.exe'
  checksum       = '28b3a54ba56eaf6c0ab6c7b6eaf5657c37b9bdfcb19dcebe235d009519049d61'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
