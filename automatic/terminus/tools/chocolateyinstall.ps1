$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'terminus'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/terminus/releases/download/v1.0.116/terminus-1.0.116-setup.exe'
  checksum       = '8e3d3b9584890d58d904360a6ac637f4e367118ce0f0fed8e21fc235df22b682'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Terminus*'
}
Install-ChocolateyPackage @packageArgs
