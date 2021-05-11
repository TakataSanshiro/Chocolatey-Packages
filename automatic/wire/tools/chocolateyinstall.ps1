$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wire'
  installerType  = 'exe'
  url            = 'https://github.com/wireapp/wire-desktop/releases/download/windows%2F3.25.4071/WireSetup.3.25.4071.exe'
  checksum       = '874af2a6a91600cdf60b617f5e71da10daacc58f958662f67a4694901e139912'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'Wire'
}
Install-ChocolateyPackage @packageArgs
