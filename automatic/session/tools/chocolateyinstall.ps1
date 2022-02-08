$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.8.1/session-desktop-win-1.8.1.exe'
  checksum       = 'c5ac7500d8e9c98689fdd04dd06ce0ab2bc4df521f296b38a27252a8afbf5166'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
