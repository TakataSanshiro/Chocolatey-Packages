$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'quicklook'
  installerType = 'msi'
  url           = 'https://github.com/QL-Win/QuickLook/releases/download/3.6.8/QuickLook-3.6.8.msi'
  silentArgs    = '/qn'
  softwareName  = 'quicklook*'
  checksum      = '12c23308152f2128de62383c612cc606fce91fcec38eabe42763614fc9aa8c58'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
