$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wire'
  installerType  = 'exe'
  url            = 'https://github.com/wireapp/wire-desktop/releases/download/windows/3.31.4421/Wire-Setup.exe'
  checksum       = '20dff70bb15b8f8bc8b9d44f939a684fca9c31122cfd9254bd4e4cc64c28f8d3'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'Wire'
}
Install-ChocolateyPackage @packageArgs
