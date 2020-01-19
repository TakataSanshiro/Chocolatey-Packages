$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'lepton'
  installerType  = 'exe'
  url            = 'https://github.com/hackjutsu/Lepton/releases/download/v1.8.2/Lepton-Setup-1.8.2.exe'
  checksum       = 'd424efc682cbf402597b395ec299c3c4e2eab0189fedf63f8c38ef44f21e23e1'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Lepton'
}
Install-ChocolateyPackage @packageArgs
