$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402020.4.2/Insomnia.Core-2020.4.2.exe'
  checksum      = 'b1247663020311dddd2b012a2792ffefa7b68d1fbe28e24bb0646ea90dbe14b8'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
