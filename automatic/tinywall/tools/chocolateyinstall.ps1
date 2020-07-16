$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tinywall'
  installerType  = 'msi'
  url            = 'https://tinywall.pados.hu/ccount/click.php?id=4'
  checksum       = '47f23b3ad411be685ecc10b657c03c8df786fb3e6e7627579d8e528d8f4b8f02'
  checksumType   = 'sha256'
  silentArgs     = '/qn /norestart'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'TinyWall*'
}
Install-ChocolateyPackage @packageArgs
