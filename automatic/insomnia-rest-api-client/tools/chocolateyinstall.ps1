$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%408.3.0/Insomnia.Core-8.3.0.exe'
  checksum      = '23a70b942c46c5fd7e3e6ba1426fc19480cec1d7c075f9e8622fd3a7eaa9ca01'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
