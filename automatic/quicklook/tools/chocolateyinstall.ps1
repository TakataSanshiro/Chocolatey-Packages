$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'quicklook'
  installerType = 'msi'
  url           = 'https://github.com/QL-Win/QuickLook/releases/download/4.0.0/QuickLook-4.0.0.msi'
  silentArgs    = "/qn /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  softwareName  = 'quicklook*'
  checksum      = '6386712ba237aca1b09fecad9268d773fbdb7dde9d49c7ab4a3355378995ccde'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
