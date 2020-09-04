$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'boostnote'
  installerType  = 'exe'
  url            = 'https://github.com/BoostIO/boost-releases/releases/download/v0.16.1/BoostnoteSetup.exe'
  checksum       = '03f1aecdd46d9d543e9b712ca1617d5242759e85e021fc0b867a04677ba78087'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Boostnote'
}
Install-ChocolateyPackage @packageArgs
