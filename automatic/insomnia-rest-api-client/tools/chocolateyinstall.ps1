$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402023.3.0/Insomnia.Core-2023.3.0.exe'
  checksum      = 'a0d2bccf3de2c649a623ba31545f60d082cf9f4e364965bc2d1ca9f367996b76'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
