$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'whale'
  installerType  = 'exe'
  url            = 'https://github.com/1000ch/whale/releases/download/v2.0.2/Whale.Setup.2.0.2.exe'
  checksum       = '2d5e46b7ccb19966101aa8be218223c7b863afd1f094ce48dc55fa82b6cbbef6'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Whale'
}
Install-ChocolateyPackage @packageArgs
