$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.11.4/session-desktop-win-x64-1.11.4.exe'
  checksum       = 'C4E103DB946FC3BB0BACF5FE2476542E3F031F8BC1B008C20C984F7A7777DD5E'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
