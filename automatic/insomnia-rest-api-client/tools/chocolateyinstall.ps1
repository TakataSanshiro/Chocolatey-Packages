$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/getinsomnia/insomnia/releases/download/v7.0.1/Insomnia.Setup.7.0.1.exe'
  checksum      = '9FF0C0F18E9F7E24E5A55A2A7B071B53744B3F2AA29B9D16CF79A27991E936F7'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
