$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'whale'
  installerType  = 'exe'
  url            = 'https://github.com/1000ch/whale/releases/download/v0.17.0/Whale.Setup.0.17.0.exe'
  checksum       = '94aeece603de77c617a0c8f6d9dfe36fa6101648091de0a032732aab3da40e15'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Whale'
}
Install-ChocolateyPackage @packageArgs
