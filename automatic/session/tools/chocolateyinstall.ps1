$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.5.4/session-desktop-win-1.5.4.exe'
  checksum       = '378bedfb50101b267648d4cb9701363efcb971d8cfdbf3e55e44075d49a5a969'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
