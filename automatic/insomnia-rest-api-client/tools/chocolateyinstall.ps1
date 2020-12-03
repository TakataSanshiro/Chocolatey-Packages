$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402020.5.0/Insomnia.Core-2020.5.0.exe'
  checksum      = '83a4856d302be604db9b0a9453c71c8be8c1a0bd999000df85ce0bc2797a23d1'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
