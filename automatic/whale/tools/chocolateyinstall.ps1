$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'whale'
  installerType  = 'exe'
  url            = 'https://github.com/1000ch/whale/releases/download/v2.0.1/Whale.Setup.2.0.1.exe'
  checksum       = '694c2767eb8ba0400e06d3d4cf7e8c13acea2c5c9c3bbbbef1cbb81361763f8a'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Whale'
}
Install-ChocolateyPackage @packageArgs
