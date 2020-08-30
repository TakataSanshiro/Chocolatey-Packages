$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'terminus'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/terminus/releases/download/v1.0.120/terminus-1.0.120-setup.exe'
  checksum       = '9da75b686892e9816b02beaf8fe2c3f3c4e6ba8335a8a00c2919d6002d2a7619'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Terminus*'
}
Install-ChocolateyPackage @packageArgs
