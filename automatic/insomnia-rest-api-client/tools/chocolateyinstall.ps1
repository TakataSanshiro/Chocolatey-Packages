$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/Kong/insomnia/releases/download/core%409.3.3/Insomnia.Core-9.3.3.exe'
  checksum      = 'c166d10a6f835df70e2beaff9de882efeb4bd9cbb8b3a262183f068974e3daaa'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs

Start-Sleep -Seconds 60
