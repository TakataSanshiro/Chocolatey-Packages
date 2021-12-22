$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.8.0/session-desktop-win-1.8.0.exe'
  checksum       = 'bf29a941a5f9dccc8f49d567f3aee9e2e80c680b435df22a8521db52cecc67d7'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
