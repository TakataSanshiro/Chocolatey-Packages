$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.4.0/session-messenger-desktop-win-1.4.0.exe'
  checksum       = '37ba23f348db598b18c54760eddfed8a532725a959ede2e10ba04f0bfea5435f'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
