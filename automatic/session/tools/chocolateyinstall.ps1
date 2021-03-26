$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.5.2/session-desktop-win-1.5.2.exe'
  checksum       = 'bddb7b9dc6af4543dcdbfeef2f2859aa251fbc590d3eaeb48ac81f4b8749e8b6'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
