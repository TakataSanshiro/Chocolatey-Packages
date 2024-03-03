$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.12.0/session-desktop-win-x64-1.12.0.exe'
  checksum       = '46637ed547d11c3d05ebd609cda06a8d635f77ab9ef886ad5d1fcd1aed34b581'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
