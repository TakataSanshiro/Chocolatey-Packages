$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'terminus'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/terminus/releases/download/v1.0.98/terminus-1.0.98-setup.exe'
  checksum       = '91e1f37586005f13edc345ae8aa59b2d10efdf3dcc1b0d81b9a8f452c2e29269'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Terminus*'
}
Install-ChocolateyPackage @packageArgs
