$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tinywall'
  installerType  = 'msi'
  url            = 'https://tinywall.pados.hu/ccount/click.php?id=4'
  checksum       = '9623bf296ed19a2bb63006e4c5a0665847d98a31f9ee43ac73718cb3cd296b86'
  checksumType   = 'sha256'
  silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'TinyWall*'
}
Install-ChocolateyPackage @packageArgs
