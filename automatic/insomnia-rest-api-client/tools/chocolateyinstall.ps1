$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%4010.2.0/Insomnia.Core-10.2.0.exe'
  checksum      = 'e29be7bda68fa59c1f8a3af0311eabad570f02318c53d404cb2c7fc7acbc90d3'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs

Start-Sleep -Seconds 60
