$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'quicklook'
  installerType = 'msi'
  url           = 'https://github.com/QL-Win/QuickLook/releases/download/3.6.11/QuickLook-3.6.11.msi'
  silentArgs    = '/qn /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`"'
  softwareName  = 'quicklook*'
  checksum      = '94d45abaadfee85796d5a1688e68485356cbc25cfe4025c89d84a5fdfadd8c7f'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
