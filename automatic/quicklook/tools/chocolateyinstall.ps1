$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'quicklook'
  installerType = 'msi'
  url           = 'https://github.com/QL-Win/QuickLook/releases/download/3.6.6/QuickLook-3.6.6.msi'
  silentArgs    = '/qn'
  softwareName  = 'quicklook*'
  checksum      = 'd521761fb5a2afe25c18d971c046accdaea39a5f0c7d8866618cd3a07c7e3d8f'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
