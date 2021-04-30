$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402021.3.0/Insomnia.Core-2021.3.0.exe'
  checksum      = '32229e2336c4f3b6eda58dbb5ad8cfc0409471b844ca017600a1421c339cbbf6'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
