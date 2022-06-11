$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402022.4.0/Insomnia.Core-2022.4.0.exe'
  checksum      = '8f2e3fc87eeb06522e3b1fe07408fc47d57e2a501d63c118066d31c659ec8adf'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
