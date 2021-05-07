$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.6.0/session-desktop-win-1.6.0.exe'
  checksum       = '525fb69d8e93490444bf20b3e5f08791e4fd5dca81b351eb0319911f8b7c4db8'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
