$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/getinsomnia/insomnia/releases/download/v7.1.0/Insomnia.Setup.7.1.0.exe'
  checksum      = '8e94b254110281eb7d3577af20de475997b5823e7f02798d3ab6745edabbd9a4'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
