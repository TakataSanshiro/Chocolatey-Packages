$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'boostnote'
  installerType  = 'exe'
  url            = 'https://github.com/BoostIO/boost-releases/releases/download/v0.12.1/BoostnoteSetup.exe'
  checksum       = '667ecb7bb18631f1d7b3ef667e5e31f92a23ec19c46d6cd595fc8c0ed51d6a60'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'Boostnote'
}
Install-ChocolateyPackage @packageArgs
