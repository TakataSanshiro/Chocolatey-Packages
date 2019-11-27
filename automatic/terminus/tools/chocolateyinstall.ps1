$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'terminus'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/terminus/releases/download/v1.0.97/terminus-1.0.97-setup.exe'
  checksum       = '0e173d60444ae73d0f5ecdecdf21ab9c60d27a85bb20b1ebb6cdc93834812321'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Terminus*'
}
Install-ChocolateyPackage @packageArgs
