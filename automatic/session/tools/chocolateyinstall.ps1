$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.12.2/session-desktop-win-x64-1.12.2.exe'
  checksum       = 'f83b3ef8febfc4ec00a106086c153d740aae4111baeaf0a31dbae491f208633c'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
