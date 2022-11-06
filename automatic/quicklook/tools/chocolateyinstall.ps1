$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'quicklook'
  installerType = 'msi'
  url           = 'https://github.com/QL-Win/QuickLook/releases/download/3.7.2/QuickLook-3.7.2.msi'
  silentArgs    = "/qn /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  softwareName  = 'quicklook*'
  checksum      = 'fad4d93b6c3365e93a01cec27d14e740d6f1136bf80bafa23838fd55b229b4f0'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
