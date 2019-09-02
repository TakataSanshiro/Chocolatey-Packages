$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'lepton'
  installerType  = 'exe'
  url            = 'https://github.com/hackjutsu/Lepton/releases/download/v1.8.1/Lepton-Setup-1.8.1.exe'
  checksum       = 'ec10596f22523f15feed3ca0ab17bab7178cac98b9d0eb462592db755c40acd9'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Lepton'
}
Install-ChocolateyPackage @packageArgs
