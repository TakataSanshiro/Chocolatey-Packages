$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402020.5.1/Insomnia.Core-2020.5.1.exe'
  checksum      = '03cfacbbc5ee373b400cc21cc8a1ae378ca19d0c712ac3652f770950b9609753'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
