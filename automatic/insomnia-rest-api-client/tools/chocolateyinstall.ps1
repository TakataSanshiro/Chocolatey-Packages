$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%408.5.1/Insomnia.Core-8.5.1.exe'
  checksum      = 'e6cbee1583dfe6e819226fb91396efdaf3640193fe2b3d9e142807a5f0e2716e'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
