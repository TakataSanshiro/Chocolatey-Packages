$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'insomnia-rest-api-client'
  installerType = 'exe'
  url           = 'https://github.com/getinsomnia/insomnia/releases/download/v6.6.2/Insomnia.Setup.6.6.2.exe'
  checksum      = '695559abf304d84a920c613bba6a982ef82e0bb9b3bc060f09c0266007587a96'
  checksumType  = 'sha256'
  silentArgs    = '--silent'
  validExitCodes= @(0)
  softwareName   = 'Insomnia'
}
Install-ChocolateyPackage @packageArgs
