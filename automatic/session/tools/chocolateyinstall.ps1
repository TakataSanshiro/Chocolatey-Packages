$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.13.1/session-desktop-win-x64-1.13.1.exe'
  checksum       = '57f8070947cbc207f91cb2fa4299bd065fa00e565ce3496524d0ef381c9eb15d'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
