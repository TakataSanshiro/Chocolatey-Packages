$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beaker'
  installerType  = 'exe'
  url            = 'https://github.com/beakerbrowser/beaker/releases/download/1.0.0/beaker-browser-setup-1.0.0.exe'
  checksum       = 'ad6eb7d6b7970dc125cedc04d84dd2c3a1f533ce7121291b4c1de676d347c957'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Beaker*'
}
Install-ChocolateyPackage @packageArgs
