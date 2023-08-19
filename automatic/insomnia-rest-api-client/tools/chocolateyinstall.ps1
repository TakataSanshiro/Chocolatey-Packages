$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402023.5.5/Insomnia.Core-2023.5.5.exe'
  checksum      = '26e1d327f325e367ccb9f84a4039c1e34fe52d67c7a6db5f8b51964323c49dfa'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
