$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'quicklook'
  installerType = 'msi'
  url           = 'https://github.com/QL-Win/QuickLook/releases/download/3.6.5/QuickLook-3.6.5.msi'
  silentArgs    = '/qn'
  softwareName  = 'quicklook*'
  checksum      = '98252c187fd37810c1638e49b3a283fbd97b42c1f21784bd808db4831aa971f1'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
