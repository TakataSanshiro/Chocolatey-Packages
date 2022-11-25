$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'quicklook'
  installerType = 'msi'
  url           = 'https://github.com/QL-Win/QuickLook/releases/download/3.7.3/QuickLook-3.7.3.msi'
  silentArgs    = "/qn /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  softwareName  = 'quicklook*'
  checksum      = '258d42a4b7bdec8bad1b6a2531c935b617d8cf450d31d5e0ccc31437481f7224'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
