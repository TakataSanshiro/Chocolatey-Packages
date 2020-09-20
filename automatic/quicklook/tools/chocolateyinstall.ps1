$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'quicklook'
  installerType = 'msi'
  url           = 'https://github.com/QL-Win/QuickLook/releases/download/3.6.10/QuickLook-3.6.10.msi'
  silentArgs    = '/qn'
  softwareName  = 'quicklook*'
  checksum      = 'b788df588af0e868e89b90d6359bf7a14cee7511e2a42bb687fcd0f96b2bd65e'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
