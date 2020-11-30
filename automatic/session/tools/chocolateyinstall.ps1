$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.4.2/session-messenger-desktop-win-1.4.2.exe'
  checksum       = 'b6c00504f49daad90db579557275cf2590cc2bfe50cf38828bf1b75035e1ef57'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
