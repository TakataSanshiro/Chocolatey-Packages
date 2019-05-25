$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/getinsomnia/insomnia/releases/download/v6.5.3/Insomnia.Setup.6.5.3.exe'
  checksum      = 'be023a82ed3979ecd3585b9b1b3c38b520df9a3d22d162407e1efbde9ab73601'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
