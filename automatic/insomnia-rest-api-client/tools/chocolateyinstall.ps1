$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%409.1.0/Insomnia.Core-9.1.0.exe'
  checksum      = '7883fda4a422c4cdf1c5bfbb225c00ed5193c343a63945c9b2fc4f5141f859f9'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs

Start-Sleep -Seconds 60
