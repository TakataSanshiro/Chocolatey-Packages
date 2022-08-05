$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402022.5.0/Insomnia.Core-2022.5.0.exe'
  checksum      = 'e0d561a703648db5d3264b1b5ea4aa9b347b82b3a1e57ca419e63f5dba31aeaa'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
