$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402022.2.1/Insomnia.Core-2022.2.1.exe'
  checksum      = '103150bffa6eb8d52988e215fa6fa360b74700b22581385ba6f197bc7ae572a9'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
