$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.11.5/session-desktop-win-x64-1.11.5.exe'
  checksum       = '582f4ca5c3763267d877ee4a11a4b8bb210bc147dfe88315377bbf2d15ca74e5'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
