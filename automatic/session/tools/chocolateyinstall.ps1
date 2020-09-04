$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.3.0/session-messenger-desktop-win-1.3.0.exe'
  checksum       = 'ebdf08edf4d1240c085ebeb37ac2604cfeadb5d1cf88d503cad6094e61295a60'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
