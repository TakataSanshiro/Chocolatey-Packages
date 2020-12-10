$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402020.5.2/Insomnia.Core-2020.5.2.exe'
  checksum      = 'c4f5c8830195f9fedc466f534e138b96e8f7a606f418197293b3a279830e5e26'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
