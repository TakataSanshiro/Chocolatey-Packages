$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'lepton'
  installerType  = 'exe'
  url            = 'https://github.com/hackjutsu/Lepton/releases/download/v1.10.0/Lepton-Setup-1.10.0.exe'
  checksum       = 'f226a2ac9178a2c663b5f28ffba010de84af9a7ddf888b15920972c8593f982d'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Lepton'
}
Install-ChocolateyPackage @packageArgs
