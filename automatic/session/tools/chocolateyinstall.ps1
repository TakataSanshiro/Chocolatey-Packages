$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.8.6/session-desktop-win-1.8.6.exe'
  checksum       = '8c131d0b6c34421350d5de1a5216184b41c22f918a830fdcfff7961d2b33f9e7'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
