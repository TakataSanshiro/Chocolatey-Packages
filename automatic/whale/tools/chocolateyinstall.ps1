$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'whale'
  installerType  = 'exe'
  url            = 'https://github.com/1000ch/whale/releases/download/v1.1.1/Whale.Setup.1.1.1.exe'
  checksum       = '220cf157c0d00551ef6f309aa4db90867e2bcd756bd2ba77e0fa0557dda60a5d'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Whale'
}
Install-ChocolateyPackage @packageArgs
