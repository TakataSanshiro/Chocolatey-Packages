$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%408.6.0/Insomnia.Core-8.6.0.exe'
  checksum      = 'C597C5EE12F64907C08459DA52D93D56C10E0C6F78CDB890DF78652229346218'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
