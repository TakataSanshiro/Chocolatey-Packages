$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'terminus'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/terminus/releases/download/v1.0.92/terminus-1.0.92-setup.exe'
  checksum       = 'ad3aeeed2613d6b2ab7d9569e40f3b4ba8184964e4df9d399d2dfa237e811487'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Terminus*'
}
Install-ChocolateyPackage @packageArgs
