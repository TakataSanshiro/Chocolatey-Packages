$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.12.3/session-desktop-win-x64-1.12.3.exe'
  checksum       = '422ae4ffa584292d8d8ac38b5b8556a800fca2890d912159e99a5c74efbd4d15'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
