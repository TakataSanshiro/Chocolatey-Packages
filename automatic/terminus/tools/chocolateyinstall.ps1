$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'terminus'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/terminus/releases/download/v1.0.114/terminus-1.0.114-setup.exe'
  checksum       = '8b73bbc095ee369ab551a2e46ed64a6137c89e417a77b53bb10dc83837ad9977'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Terminus*'
}
Install-ChocolateyPackage @packageArgs
