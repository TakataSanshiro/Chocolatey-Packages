$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402022.7.0/Insomnia.Core-2022.7.0.exe'
  checksum      = '92fb067cd807e6c0ae3fe8ea1b40a6647f44457ce410cb54c940705666ecc883'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
