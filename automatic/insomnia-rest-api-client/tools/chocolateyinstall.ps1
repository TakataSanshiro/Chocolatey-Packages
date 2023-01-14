$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402022.7.2/Insomnia.Core-2022.7.2.exe'
  checksum      = 'ea3061f2b260f7ff2d67d8b8f2ebc65d3b746ed048f95f85dd250013c2555764'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
