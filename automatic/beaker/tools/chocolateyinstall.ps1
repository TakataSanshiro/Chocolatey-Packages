$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beaker'
  installerType  = 'exe'
  url            = 'https://github.com/beakerbrowser/beaker/releases/download/0.8.10/beaker-browser-setup-0.8.10.exe'
  checksum       = 'fe82f0755021e010bc932b8224c6493fa7980b110ee51e81058328634e584ce9'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Beaker*'
}
Install-ChocolateyPackage @packageArgs
