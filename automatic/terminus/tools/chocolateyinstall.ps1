$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'terminus'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/terminus/releases/download/v1.0.91/terminus-1.0.91-setup.exe'
  checksum       = '1fe7d3b6f4aa6b5a846061e0d8ea2d69821f2f468031594de8257c81e44e5d78'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Terminus*'
}
Install-ChocolateyPackage @packageArgs
