$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.2.0/session-messenger-desktop-win-1.2.0.exe'
  checksum       = '59a2576cbeb2f83d1bec70adc053cf67e6bd38fba5a2f02f93198ea16714a111'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
