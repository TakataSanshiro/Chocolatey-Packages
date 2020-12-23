$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.4.4/session-desktop-win-1.4.4.exe'
  checksum       = 'b9e7ca8c05e98dd69761fd6a0a485408274db89202fc3a5fb7ada76e6b0e30cd'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
