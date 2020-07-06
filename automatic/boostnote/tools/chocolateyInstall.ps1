$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'boostnote'
  installerType  = 'exe'
  url            = 'https://github.com/BoostIO/boost-releases/releases/download/v0.15.3/BoostnoteSetup.exe'
  checksum       = '778d1ab887825a3e4b3e9958a3ab8e6e302a40c14bd1e158e2a1fb3309ffed99'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Boostnote'
}
Install-ChocolateyPackage @packageArgs
