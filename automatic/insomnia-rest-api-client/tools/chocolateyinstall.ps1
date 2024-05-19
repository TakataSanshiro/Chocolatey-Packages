$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%409.2.0/Insomnia.Core-9.2.0.exe'
  checksum      = 'EB6217D0A2E8D54B29EEA4BBC7893AFF3A9DB561B82157DA871FB13DC24229E5'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs

Start-Sleep -Seconds 60
