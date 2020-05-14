$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.0.8/session-messenger-desktop-win-1.0.8.exe'
  checksum       = '7517911ec6918ad5ae6a99ad85a09f8a00ba1fd69c8e8cd9ae178bec165bb9df'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
