$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.7.3/session-desktop-win-1.7.3.exe'
  checksum       = 'd3df050701a53d4d10f684d4c0c34ff1a51ef525aad713ea72d24cf1a4db7cb3'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
