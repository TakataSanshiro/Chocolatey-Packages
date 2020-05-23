$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'quicklook'
  installerType = 'msi'
  url           = 'https://github.com/QL-Win/QuickLook/releases/download/3.6.9/QuickLook-3.6.9.msi'
  silentArgs    = '/qn'
  softwareName  = 'quicklook*'
  checksum      = 'ff6fa22699b4159792f217357ea7d6a7a5ba3f58f404c74c97d47d200dafad05'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
