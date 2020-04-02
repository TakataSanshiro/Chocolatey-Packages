$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tinywall'
  installerType  = 'msi'
  url            = 'https://tinywall.pados.hu/ccount/click.php?id=4'
  checksum       = '48A3AE91F00231D199628932E09697E591DB4C6D037D585A8A964A1FD4DD15E3'
  checksumType   = 'sha256'
  silentArgs     = '/qn /norestart'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'TinyWall*'
}
Install-ChocolateyPackage @packageArgs
