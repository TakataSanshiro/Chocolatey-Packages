$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.9.1/session-desktop-win-1.9.1.exe'
  checksum       = '7a381bebf3b451e9909e2185138b94df330ee48922e5f94805b6fd77172fa4fa'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
