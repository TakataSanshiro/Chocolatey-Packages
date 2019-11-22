$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tinywall'
  installerType  = 'msi'
  url            = 'https://tinywall.pados.hu/ccount/click.php?id=3'
  checksum       = '85115eb9dd1f5b2a7d6c63dcc46f49f8554c63c7687331b4d348256e27f7587a'
  checksumType   = 'sha256'
  silentArgs     = '/qn /norestart'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'TinyWall*'
}
Install-ChocolateyPackage @packageArgs
