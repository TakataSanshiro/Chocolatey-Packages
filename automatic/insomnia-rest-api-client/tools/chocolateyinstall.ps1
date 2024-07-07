$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%409.3.2/Insomnia.Core-9.3.2.exe'
  checksum      = '2f944d531a6fcbbe9f091b75f0766a8b9fe134126010338a560d6e49ea5b8e0a'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs

Start-Sleep -Seconds 60
