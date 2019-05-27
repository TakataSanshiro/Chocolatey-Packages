$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'boostnote'
  installerType  = 'exe'
  url            = 'https://github.com/BoostIO/boost-releases/releases/download/v0.11.17/BoostnoteSetup.exe'
  checksum       = 'b82f712ff675efde3e0ee9ab823e361ad94fe9ba1c3c936aceb595126e8f65a0'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'Boostnote'
}
Install-ChocolateyPackage @packageArgs
