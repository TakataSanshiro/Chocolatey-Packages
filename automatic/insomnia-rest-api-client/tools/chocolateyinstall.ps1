$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/getinsomnia/insomnia/releases/download/v7.0.3/Insomnia.Setup.7.0.3.exe'
  checksum      = 'b37498a0c6b2132bac7767f2e8ca1f08e314cf6ed6a5f26a70161990ff2a4166'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
