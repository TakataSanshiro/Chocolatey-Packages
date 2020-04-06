$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.0.6/session-messenger-desktop-win-1.0.6.exe'
  checksum       = '0f4b0231ea0db7a2179311ea014dfb30364bd787ddc94af41c4340bc0687b609'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
