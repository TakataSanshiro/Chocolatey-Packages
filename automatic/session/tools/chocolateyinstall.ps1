$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.12.4/session-desktop-win-x64-1.12.4.exe'
  checksum       = '3fcd3b658ae97fca1f6358f45c382670ba1c299c95b88922e32e8d35b65ccd5b'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
