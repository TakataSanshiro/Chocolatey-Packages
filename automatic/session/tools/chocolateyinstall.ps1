$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.4.1/session-messenger-desktop-win-1.4.1.exe'
  checksum       = '4f4c7e14f173f1f63b73b1d4f466117b2e0c1a563918c4b3e434f5d7d10e74e8'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
