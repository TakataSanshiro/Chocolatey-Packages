$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/getinsomnia/insomnia/releases/download/v7.0.6/Insomnia.Setup.7.0.6.exe'
  checksum      = '7c0f9544d845a4d23e1c27752b9277ae72dcd51b0da0c29b2f092827bdc1c19e'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
