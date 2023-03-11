$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402023.1.0/Insomnia.Core-2023.1.0.exe'
  checksum      = '85f48e8586ace23c32cb33b057a1e9e9403f888bed00ba5003ceb2f23bd505d0'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
