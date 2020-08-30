$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'whale'
  installerType  = 'exe'
  url            = 'https://github.com/1000ch/whale/releases/download/v2.0.0/Whale.Setup.2.0.0.exe'
  checksum       = '9c4ab5fd6d290e43e979f90bce9042d219c84b7a2cd6ea6783c63798465e2575'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Whale'
}
Install-ChocolateyPackage @packageArgs
