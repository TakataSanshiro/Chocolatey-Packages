$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402021.5.1/Insomnia.Core-2021.5.1.exe'
  checksum      = 'a7c0b0dd9d344b23a0623273c971a1550ff59032212489a468b995bae40f09dd'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
