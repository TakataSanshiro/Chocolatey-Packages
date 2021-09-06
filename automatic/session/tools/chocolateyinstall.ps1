$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.7.0/session-desktop-win-1.7.0.exe'
  checksum       = '1f2c756bcba5a659c5ffdf79c1984e6f65b66a2f02827ee935909ddc61678697'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
