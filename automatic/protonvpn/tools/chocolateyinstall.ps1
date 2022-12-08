$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v2.3.1.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'a09596b6c0c919641b2d448a6399201d3cddb52f1c2c518e70546b27b6112847'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
