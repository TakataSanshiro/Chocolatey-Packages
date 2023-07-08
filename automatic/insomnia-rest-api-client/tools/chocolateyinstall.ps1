$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402023.4.0/Insomnia.Core-2023.4.0.exe'
  checksum      = '5a573f191bf1a1be6c97deb13105292bc51cc0fb72931ee9ed8b0ac7825d6ec0'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
