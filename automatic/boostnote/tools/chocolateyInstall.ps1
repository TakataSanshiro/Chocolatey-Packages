$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'boostnote'
  installerType  = 'exe'
  url            = 'https://github.com/BoostIO/boost-releases/releases/download/v0.15.0/BoostnoteSetup.exe'
  checksum       = 'be1a1640a301fffc05fedf3cc8da5252a05623a8b4f9e843d9386a814f150b70'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'Boostnote'
}
Install-ChocolateyPackage @packageArgs
