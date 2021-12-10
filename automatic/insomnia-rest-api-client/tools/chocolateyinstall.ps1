$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402021.7.2/Insomnia.Core-2021.7.2.exe'
  checksum      = 'cf2b39abd9d87f825facc1594dcccc40e0f740f3fc743b103bcdeabb16f78bea'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
