$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wire'
  installerType  = 'exe'
  url            = 'https://github.com/wireapp/wire-desktop/releases/download/windows%2F3.22.3993/WireSetup.3.22.3993.exe'
  checksum       = '7b2d98639b7ead12b4ac650e5a6dac48408ff8402ef69e3938dc6b45534c6e0e'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'Wire'
}
Install-ChocolateyPackage @packageArgs
