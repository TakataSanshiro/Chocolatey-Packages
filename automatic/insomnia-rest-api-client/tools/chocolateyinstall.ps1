$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/getinsomnia/insomnia/releases/download/v7.0.0/Insomnia.Setup.7.0.0.exe'
  checksum      = '50450fc3c1137920d9629184042a19209accd267b75fe53b1d758896fc2090d2'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
