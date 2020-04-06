$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'quicklook'
  installerType = 'msi'
  url           = 'https://github.com/QL-Win/QuickLook/releases/download/3.6.7/QuickLook-3.6.7.msi'
  silentArgs    = '/qn'
  softwareName  = 'quicklook*'
  checksum      = 'cc3c5688c92e09d509c1df06fd9482b6cbe2af92d626ebacab2cbbf64ab3c99a'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
