$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.14.2/session-desktop-win-x64-1.14.2.exe'
  checksum       = '9dd24d625d918f1e6c608c23445bdf80db0d3f5992daeb56079fbaa795b79099'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
