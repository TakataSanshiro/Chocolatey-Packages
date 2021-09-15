$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.7.1/session-desktop-win-1.7.1.exe'
  checksum       = '59491509b6f0046145c7a09ae3a38f08d81923ce3ac0881590e991cbe09f55fe'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
