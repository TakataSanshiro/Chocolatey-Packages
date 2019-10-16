$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'boostnote'
  installerType  = 'exe'
  url            = 'https://github.com/BoostIO/boost-releases/releases/download/v0.13.0/BoostnoteSetup.exe'
  checksum       = 'c3a13a5b37902bb639dbf1b710d7bcc178a8218d78ef3ce301094bbd7c70aa7b'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'Boostnote'
}
Install-ChocolateyPackage @packageArgs
