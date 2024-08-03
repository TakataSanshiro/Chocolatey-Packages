$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wire'
  installerType  = 'exe'
  url            = 'https://github.com/wireapp/wire-desktop/releases/download/windows/3.36.4913/Wire-Setup.exe'
  checksum       = '7e9d011c6dac2c4523f223f66a9ef58c2b00962a9ec0baf1d35d004c2c2e681d'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'Wire'
}
Install-ChocolateyPackage @packageArgs
