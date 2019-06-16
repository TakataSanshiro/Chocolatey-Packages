$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'lepton'
  installerType  = 'exe'
  url            = 'https://github.com/hackjutsu/Lepton/releases/download/v1.8.0/Lepton-Setup-1.8.0.exe'
  checksum       = '11c9deafcd57a1de105ff2fe369bf0b2ee8b1027d2bd0541c909f66a99223af6'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Lepton'
}
Install-ChocolateyPackage @packageArgs
