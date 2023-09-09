$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402023.5.8/Insomnia.Core-2023.5.8.exe'
  checksum      = 'c1b50bc3d3f0909e0aa2094719b01f4959cef6ae695c76bb07076c151bfd6a6d'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
