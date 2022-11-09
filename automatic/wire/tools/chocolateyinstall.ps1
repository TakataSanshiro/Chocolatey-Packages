$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wire'
  installerType  = 'exe'
  url            = 'https://github.com/wireapp/wire-desktop/releases/download/windows/3.29.4349/Wire-Setup.exe'
  checksum       = '0528e6bb5f86fbcefe8541d12d0ba084f986c9d66b4dfc4fa559ea0eaba9712e'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'Wire'
}
Install-ChocolateyPackage @packageArgs
