$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.4.10/session-desktop-win-1.4.10.exe'
  checksum       = 'c29e8fa9c37a919bc789a4512ff9f594298fc049248e65779ded033cfea2bdf5'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
