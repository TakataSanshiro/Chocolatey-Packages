$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'msi'
  url            = 'https://github.com/snakefoot/snaketail-net/releases/download/1.9.8/SnakeTail.v1.9.8.x86.msi'
  url64          = 'https://github.com/snakefoot/snaketail-net/releases/download/1.9.8/SnakeTail.v1.9.8.x64.msi'
  checksum       = 'c79877c562dbc786bc783c8ecdb45dc14da85bfcd176734efb134466a3a4128a'
  checksum64     = 'e455f2e3476517daa56716a7cfdb7e4ef45f60e5681c0eaa82a73614e65e45ac'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = "/quiet /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0)
  softwareName   = 'SnakeTail*'
}
Install-ChocolateyPackage @packageArgs
