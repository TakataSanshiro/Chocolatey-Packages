$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'terminus'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/terminus/releases/download/v1.0.103/terminus-1.0.103-setup.exe'
  checksum       = 'ba530d64bd263422498b593a9bba7b43b9d8a80276bc96870617e8460b41bc66'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Terminus*'
}
Install-ChocolateyPackage @packageArgs
