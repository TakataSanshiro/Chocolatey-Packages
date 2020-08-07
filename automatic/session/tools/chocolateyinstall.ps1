$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.2.1/session-messenger-desktop-win-1.2.1.exe'
  checksum       = 'c1cc600792e700e430101436292b0ca66e353932a4d49afffa7f4a62fac41f7b'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
