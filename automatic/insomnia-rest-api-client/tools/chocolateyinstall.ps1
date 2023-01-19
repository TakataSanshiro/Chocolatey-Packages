$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%402022.7.4/Insomnia.Core-2022.7.4.exe'
  checksum      = 'a9e757b8df0a913a57eadd9aa6bccf799ee22c33fe6c72d429ed7e3d0905bc9f'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
