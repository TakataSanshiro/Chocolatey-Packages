$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.4.9/session-desktop-win-1.4.9.exe'
  checksum       = 'fc3b34a6c64ce55f419918a0516c527b8dc9bf356fd655f13f7fef0d4321ec6c'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
