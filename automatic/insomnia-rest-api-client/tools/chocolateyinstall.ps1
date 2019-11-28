$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/getinsomnia/insomnia/releases/download/v7.0.4/Insomnia.Setup.7.0.4.exe'
  checksum      = '2d0f45952337bc98304366fdf4122d32291d655cecc6e71610329a57b7704f90'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
