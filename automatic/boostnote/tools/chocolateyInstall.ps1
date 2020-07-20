$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'boostnote'
  installerType  = 'exe'
  url            = 'https://github.com/BoostIO/boost-releases/releases/download/v0.16.0/BoostnoteSetup.exe'
  checksum       = 'dc3431b17c7a1720f892e6df1955d1cdfd7dea10927a746ca72a0947dc7f1c6a'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Boostnote'
}
Install-ChocolateyPackage @packageArgs
