$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'lepton'
  installerType  = 'exe'
  url            = 'https://github.com/hackjutsu/Lepton/releases/download/v1.9.0/Lepton-Setup-1.9.0.exe'
  checksum       = '798ced955e58ef5e7436f5e72d6c9ec014eb266049f693e1a01f4997f0b7d5fa'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Lepton'
}
Install-ChocolateyPackage @packageArgs
