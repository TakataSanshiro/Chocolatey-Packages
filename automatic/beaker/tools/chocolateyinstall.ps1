$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beaker'
  installerType  = 'exe'
  url            = 'https://github.com/beakerbrowser/beaker/releases/download/1.1.0/beaker-browser-setup-1.1.0.exe'
  checksum       = '238d5025daacb01430e32521d517f1539e51e9faafb9597a10a4ce28e371743c'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Beaker*'
}
Install-ChocolateyPackage @packageArgs
