$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%408.6.1/Insomnia.Core-8.6.1.exe'
  checksum      = '1140e6ce712525887f21225e89590a0dbeb2d30a2a44d449513c0da07803d8b1'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
