$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402021.4.0/Insomnia.Core-2021.4.0.exe'
  checksum      = 'c61afae9acd5df56be9b199fc083b6d475870150b1d5b5d3cb8482e5eb9b41b3'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
