$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402021.5.3/Insomnia.Core-2021.5.3.exe'
  checksum      = '3ba3821a13ad4589e14e3ff09f2def8068cb93b7f0171006ed21796cf6333b99'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
