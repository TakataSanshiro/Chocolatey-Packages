$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.26.0.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '42b44bf0c43aea27b04cc72cbe7f0e103fb96a586a191a651933c7bf35f2946c'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
