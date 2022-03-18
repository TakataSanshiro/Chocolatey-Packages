$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.8.2/session-desktop-win-1.8.2.exe'
  checksum       = '0c351bbf5073cd144ef3a68a615890014b79584e0acb6fb3b816ca0d6d189fa8'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
