$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402021.1.1/Insomnia.Core-2021.1.1.exe'
  checksum      = 'f2378e3a1db751b82a9f1541b3467ea5318a29e91c658a8f6a0d5acd2619a249'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
