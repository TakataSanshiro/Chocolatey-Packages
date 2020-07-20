$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.1.2/session-messenger-desktop-win-1.1.2.exe'
  checksum       = 'fde6813fb09bf6c7df50fb7fe32576eb2cf2cf71ab1f47c7471287922f89c085'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
