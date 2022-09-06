$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.10.0/session-desktop-win-1.10.0.exe'
  checksum       = '2128dba20b5bd2d819ef6a2744cd7c5a7d44ecc4d03acf678f33af3e5ebbc326'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
