$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.4.8/session-desktop-win-1.4.8.exe'
  checksum       = 'd5bed365cadd924f5bf46da137b4ebfe8e9a501d4aeffacd44bb6e26699acbb6'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
