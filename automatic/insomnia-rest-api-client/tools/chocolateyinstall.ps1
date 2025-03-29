$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%4011.0.1/Insomnia.Core-11.0.1.exe'
  checksum      = '3a0f60aab5413cdb714ef442dbdfd2fc8ff225f23f4afe9039d1bea9ddbd51ea'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs

Start-Sleep -Seconds 60
