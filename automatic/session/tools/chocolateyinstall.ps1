$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.6.3/session-desktop-win-1.6.3.exe'
  checksum       = 'cd0b94e6fed8f3e99232f800e59438429164d336c6a7ca01fa1e12ebd9c8195d'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
