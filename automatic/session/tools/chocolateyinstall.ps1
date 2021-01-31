$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.4.7/session-desktop-win-1.4.7.exe'
  checksum       = 'B00D884A73E5F68ADA31BB29C2BE4C5B1BD542DC10A86CB00DAF7D20EDBFD0C7'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
