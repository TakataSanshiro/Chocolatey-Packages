$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'terminus'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/terminus/releases/download/v1.0.137/terminus-1.0.137-setup.exe'
  checksum       = 'fe20f6605e03a53b6099545f80504b93bc983d08d6fa8d2c0d6a918f6cfc5395'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Terminus*'
}
Install-ChocolateyPackage @packageArgs
