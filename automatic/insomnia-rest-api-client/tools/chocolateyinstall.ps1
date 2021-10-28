$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402021.6.0/Insomnia.Core-2021.6.0.exe'
  checksum      = 'bc9ed4ec13792ae22e55a93e1c1fcb0a6f062433d1c10d16a5c3460e5cd0cb11'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
