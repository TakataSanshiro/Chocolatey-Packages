$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'terminus'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/terminus/releases/download/v1.0.102/terminus-1.0.102-setup.exe'
  checksum       = '204e1d1e316833dd8260399b5bf9765f1725a33c2b4874f68dbd9023ea48ca1d'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Terminus*'
}
Install-ChocolateyPackage @packageArgs
