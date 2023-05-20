$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402023.2.2/Insomnia.Core-2023.2.2.exe'
  checksum      = '78e4b2aa20c2c82e3d7902b67c2c5da3fc288e3b46ab89c18eb1e6c34825a5cd'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
