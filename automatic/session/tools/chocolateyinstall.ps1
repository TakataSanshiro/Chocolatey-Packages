$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.14.3/session-desktop-win-x64-1.14.3.exe'
  checksum       = '596e3776e80d5e87fe7a8ba150718d2469160fc51e095fa72e12f4257e95e46a'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
