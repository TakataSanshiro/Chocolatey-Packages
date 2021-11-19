$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'quicklook'
  installerType = 'msi'
  url           = 'https://github.com/QL-Win/QuickLook/releases/download/3.7.1/QuickLook-3.7.1.msi'
  silentArgs    = "/qn /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  softwareName  = 'quicklook*'
  checksum      = '16641db14617c403100ad890ccf1706082a9f08b38812d566e4d4cfcd627ec59'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
