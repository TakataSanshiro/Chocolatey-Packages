$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402023.5.6/Insomnia.Core-2023.5.6.exe'
  checksum      = '33933ad650a139620e5e5d55925e656335cfd4bfa0b8cbba8ac489cda5f89cd0'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
