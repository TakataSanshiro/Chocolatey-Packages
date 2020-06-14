$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'lepton'
  installerType  = 'exe'
  url            = 'https://github.com/hackjutsu/Lepton/releases/download/v1.9.1/Lepton-Setup-1.9.1.exe'
  checksum       = 'cc9d3b298c625e1ff8d242f78de3ae3db434c625b44deb84a8c5ddf86703bd9b'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Lepton'
}
Install-ChocolateyPackage @packageArgs
