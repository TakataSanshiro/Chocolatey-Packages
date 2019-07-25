$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'boostnote'
  installerType  = 'exe'
  url            = 'https://github.com/BoostIO/boost-releases/releases/download/v0.12.0/BoostnoteSetup.exe'
  checksum       = '5aa35e62049ab435fb71a3a4e4299bf4eb99a1c33977ab7e2dde65d6e6f5e8e0'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'Boostnote'
}
Install-ChocolateyPackage @packageArgs
