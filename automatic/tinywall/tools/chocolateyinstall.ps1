$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tinywall'
  installerType  = 'msi'
  url            = 'https://tinywall.pados.hu/ccount/click.php?id=4'
  checksum       = '45fc417fbea7ac67a86112be1002f0050b1e4c9caffbffa57e34f4f1845a18da'
  checksumType   = 'sha256'
  silentArgs     = '/qn /norestart'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'TinyWall*'
}
Install-ChocolateyPackage @packageArgs
