$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.5.0/session-desktop-win-1.5.0.exe'
  checksum       = '75fb56eb14898ce2422b0347e91c8dff11bc0ef5c6cfc84079d2c62b9b834520'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
