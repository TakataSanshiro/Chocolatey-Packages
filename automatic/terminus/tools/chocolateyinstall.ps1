$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'terminus'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/terminus/releases/download/v1.0.106/terminus-1.0.106-setup.exe'
  checksum       = 'ad4f3fb98620f864dc6c0dfcf5d4ea72d0a4e682c98a56a7a09539010a87df22'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Terminus*'
}
Install-ChocolateyPackage @packageArgs
