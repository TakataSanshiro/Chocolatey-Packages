$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%408.4.2/Insomnia.Core-8.4.2.exe'
  checksum      = 'bcf142a80a85235f2349bd6d19d02df807c4370df3d69c65636bf2e901f2343a'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
