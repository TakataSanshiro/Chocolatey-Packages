$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'lepton'
  installerType  = 'exe'
  url            = 'https://github.com/hackjutsu/Lepton/releases/download/v1.9.2/Lepton-Setup-1.9.2.exe'
  checksum       = '9d70afb8b7ab0c22c211c15537d4c04f996e96c3b9aa6ab5b34c22538afb6163'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Lepton'
}
Install-ChocolateyPackage @packageArgs
