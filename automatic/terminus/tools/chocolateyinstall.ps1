$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'terminus'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/terminus/releases/download/v1.0.108/terminus-1.0.108-setup.exe'
  checksum       = '425c8a03b6a0d79b5e76ca767010baae5c007ce29b2e87c0994aa9e2dbbdccea'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Terminus*'
}
Install-ChocolateyPackage @packageArgs
